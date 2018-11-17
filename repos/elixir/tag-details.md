<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elixir`

-	[`elixir:1.4`](#elixir14)
-	[`elixir:1.4.5`](#elixir145)
-	[`elixir:1.4.5-slim`](#elixir145-slim)
-	[`elixir:1.4-slim`](#elixir14-slim)
-	[`elixir:1.5`](#elixir15)
-	[`elixir:1.5.3`](#elixir153)
-	[`elixir:1.5.3-alpine`](#elixir153-alpine)
-	[`elixir:1.5.3-slim`](#elixir153-slim)
-	[`elixir:1.5-alpine`](#elixir15-alpine)
-	[`elixir:1.5-slim`](#elixir15-slim)
-	[`elixir:1.6`](#elixir16)
-	[`elixir:1.6.6`](#elixir166)
-	[`elixir:1.6.6-alpine`](#elixir166-alpine)
-	[`elixir:1.6.6-otp-21`](#elixir166-otp-21)
-	[`elixir:1.6.6-otp-21-alpine`](#elixir166-otp-21-alpine)
-	[`elixir:1.6.6-slim`](#elixir166-slim)
-	[`elixir:1.6-alpine`](#elixir16-alpine)
-	[`elixir:1.6-otp-21`](#elixir16-otp-21)
-	[`elixir:1.6-otp-21-alpine`](#elixir16-otp-21-alpine)
-	[`elixir:1.6-slim`](#elixir16-slim)
-	[`elixir:1.7`](#elixir17)
-	[`elixir:1.7.4`](#elixir174)
-	[`elixir:1.7.4-alpine`](#elixir174-alpine)
-	[`elixir:1.7.4-slim`](#elixir174-slim)
-	[`elixir:1.7-alpine`](#elixir17-alpine)
-	[`elixir:1.7-slim`](#elixir17-slim)
-	[`elixir:alpine`](#elixiralpine)
-	[`elixir:latest`](#elixirlatest)
-	[`elixir:slim`](#elixirslim)

## `elixir:1.4`

```console
$ docker pull elixir@sha256:1c78326759f7588c19633e5a85bcb15775975d39ab08c5a4ce8960ca056be4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.4` - linux; amd64

```console
$ docker pull elixir@sha256:dff0800a3df69783733cd5e46cfa99b4888374aa73835d16669a9f818e7854d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.2 MB (475221472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcabfcd7935b4ef0485bd36c546a5e6d119464384fbce7a018c43f1bb2f23010`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:29:15 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 17 Nov 2018 06:49:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libssl1.0-dev 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:49:09 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:49:09 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 06:49:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 06:49:26 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:12:22 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:12:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:12:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaba2cc9227f93bd3ce41fa6ff372e0100ac4824870ebd167ee31b8b2ed221a`  
		Last Modified: Sat, 17 Nov 2018 07:39:43 GMT  
		Size: 143.5 MB (143492256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403ad75fdbe95a64e48bfd4f871c50f7872adc895ef5ff8f683394f1c1cf336`  
		Last Modified: Sat, 17 Nov 2018 07:39:25 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acab6ea588ffe100492ecb6489cc5f2615a6368ead72c747a4409d3be28723`  
		Last Modified: Sat, 17 Nov 2018 07:39:25 GMT  
		Size: 3.8 MB (3792805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417a03b23c457e9074d2d17399d33c6e4e5047b76a9318fe0a77e08ecad76389`  
		Last Modified: Sat, 17 Nov 2018 10:24:35 GMT  
		Size: 4.1 MB (4059677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4` - linux; arm variant v7

```console
$ docker pull elixir@sha256:62ab81aa2b890372ad9ee8aa0be79163c910095efcc6e080b3590742346bfd97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.3 MB (366328020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d673bbf7b19fe87b2e0f014d3cd800bd9d08aa33b62e4f0b2b6cd059c1e6f39`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:30:28 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 12:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:41:21 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:41:21 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:41:25 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:41:26 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:42:05 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:18:30 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:19:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:19:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002878cce7e14ca1293cd555eec033a6494913ae05e9b1b6a76701bb86dae153`  
		Last Modified: Wed, 05 Sep 2018 12:53:36 GMT  
		Size: 16.7 MB (16712872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a262dbf1b2c7fd841963ee65f24c265c5385068a36df528802e7ea0303aa0f`  
		Last Modified: Wed, 05 Sep 2018 12:54:08 GMT  
		Size: 39.8 MB (39764418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1af7e0e98d631929ae2550be66fec719178b6723cd1c000617ca718b1311ecc`  
		Last Modified: Wed, 05 Sep 2018 12:54:52 GMT  
		Size: 114.1 MB (114092262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f590e0792cc7dc852b710c42eec4009c72515b4bdaf37c3360e254bc09d1556f`  
		Last Modified: Sat, 20 Oct 2018 12:54:24 GMT  
		Size: 137.6 MB (137618250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9c6eb1e1a553fbab9dbe64e1053020ab7a12183cf98067be4051d852670d8b`  
		Last Modified: Sat, 20 Oct 2018 12:53:57 GMT  
		Size: 199.2 KB (199217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55e451e397e21edb20c49c75c6ce332fa0a81929deefe9bbba15058bbfd323b`  
		Last Modified: Sat, 20 Oct 2018 12:53:57 GMT  
		Size: 3.7 MB (3699807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081824c10a33952f53c0c217bc16a99d4cd0087acb3282590b559da0a3c875b6`  
		Last Modified: Tue, 30 Oct 2018 12:38:04 GMT  
		Size: 4.1 MB (4052806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:d2dee8378dcc1e5cfd31f14a6db38e1b4ecd4afb23009511ae0f4836929e5828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374785154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f40b7db8b55c110ffefe2c5b549520905b26cb12a56e35a2e54696d5b1007fa`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:47:33 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 06 Jun 2018 12:11:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:11:20 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:11:23 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:11:34 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:11:37 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:12:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 17:37:49 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 17:38:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 17:38:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd815e36d7f44152fb3c651c3848bd84765bac22b6f3eb61d2ea915e19f3661`  
		Last Modified: Wed, 06 Jun 2018 12:31:12 GMT  
		Size: 141.6 MB (141634670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a1fe6630cb0695ef09a7ed31454c04e817d5d95a2b5c748c186c4e2a6d840c`  
		Last Modified: Wed, 06 Jun 2018 12:30:37 GMT  
		Size: 199.3 KB (199251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9eb8319535dff651a5e79f9f93b8c2fa6e15a81d0c0be4ebf84f76bd24d9cbc`  
		Last Modified: Wed, 06 Jun 2018 12:30:39 GMT  
		Size: 3.3 MB (3331288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c39a04f77234e3a3666f41179b794524e72b39591677f91f2213e7931674ca`  
		Last Modified: Wed, 06 Jun 2018 17:42:29 GMT  
		Size: 4.1 MB (4053600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4` - linux; 386

```console
$ docker pull elixir@sha256:6e8d8ada69b39a16f06f1e931f8546402d0869c8e4d11db595eee4b8e6ef0487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.8 MB (401756665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf5e82ba51bb7009634112ca106d315fef6ffdbba35d9ca94c5d7d5382c8410`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:23:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:24:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:26:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:39:48 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 11:53:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:53:14 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:53:15 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:53:18 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:53:18 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:53:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:05:15 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:05:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:05:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98febec5483097f081c5032f812a7e64a5b4d73c4d741999bc664f6e3f048797`  
		Last Modified: Tue, 16 Oct 2018 21:40:20 GMT  
		Size: 19.8 MB (19835996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee4bfa90c6685c6307afa1e70690a9b39c02a9f1905e3138698722d145d7390`  
		Last Modified: Tue, 16 Oct 2018 21:41:12 GMT  
		Size: 44.0 MB (43952414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ab7bc92a6136ae8e9c1b759aa4abe47adbed4b0d263de521b309eb3268b12c`  
		Last Modified: Tue, 16 Oct 2018 21:42:32 GMT  
		Size: 135.2 MB (135188750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c43d1a6862a295825764cdbcb5e65b0d4ee6459ea3348a712a4c205901efb`  
		Last Modified: Sat, 20 Oct 2018 12:12:08 GMT  
		Size: 140.3 MB (140342812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8000ebfca046d0dbbed1d828f13935152dd8b07bcfc77ccca23fa2bd3826ccd`  
		Last Modified: Sat, 20 Oct 2018 12:11:48 GMT  
		Size: 199.2 KB (199248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a271fba588892315f05bef8553b8002d4f11122ab0985f63da1bd8aec783a1`  
		Last Modified: Sat, 20 Oct 2018 12:11:48 GMT  
		Size: 3.7 MB (3699767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4abfe8c1847b2fed9d8abdf8335c32052680ac8ae4d47595e9c377abd2afbcb`  
		Last Modified: Sat, 20 Oct 2018 13:11:37 GMT  
		Size: 4.1 MB (4053389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4` - linux; s390x

```console
$ docker pull elixir@sha256:bca281bf1f07b5269d923b6d8463df0686f95f3cd3a6d5df0a683fe644d2e69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.2 MB (385207427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88de06b5736ec55e20359dc43dded9d08b2b3de88143960c23a012e5d455f008`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:31:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:33:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:41:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 11:49:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 11:49:23 GMT
CMD ["erl"]
# Fri, 11 May 2018 11:49:24 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 11:49:26 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:01:28 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:01:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:24:58 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:25:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:25:17 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be7fda6df150d239266145f4a84caa9f37d32c535a19acbb408973995140fd`  
		Last Modified: Sat, 05 May 2018 12:45:40 GMT  
		Size: 17.8 MB (17787031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7861d9ab6f9ef13ede92760c03359fa98b5718a37494c7ae5f428bad6ab514d`  
		Last Modified: Sat, 05 May 2018 12:46:05 GMT  
		Size: 43.4 MB (43389402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db96feb68b1f770893290098b26b859f1842d5abad061e981d53fad43c8726b`  
		Last Modified: Sat, 05 May 2018 12:46:40 GMT  
		Size: 116.2 MB (116204466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735735f025b2f5bcf7bcbed66647477b742268c8711ab8980e82e94876027b29`  
		Last Modified: Fri, 11 May 2018 11:57:32 GMT  
		Size: 145.8 MB (145778708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44de871ab5870a600ac13373f8dc39c0b2a12ea4edebe8c78e73492b1be211`  
		Last Modified: Fri, 11 May 2018 11:57:15 GMT  
		Size: 199.2 KB (199216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f9a0aa4a63dce475e760b0e1a40b724c0090ec0344e34f800cee3dded109a6`  
		Last Modified: Wed, 06 Jun 2018 12:05:19 GMT  
		Size: 3.3 MB (3331286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025a735a5d95ba16521df1fadea09b9aad7cd924221bbfba31fd6d199e161b61`  
		Last Modified: Wed, 06 Jun 2018 12:29:22 GMT  
		Size: 4.1 MB (4051461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4.5`

```console
$ docker pull elixir@sha256:1c78326759f7588c19633e5a85bcb15775975d39ab08c5a4ce8960ca056be4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.4.5` - linux; amd64

```console
$ docker pull elixir@sha256:dff0800a3df69783733cd5e46cfa99b4888374aa73835d16669a9f818e7854d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.2 MB (475221472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcabfcd7935b4ef0485bd36c546a5e6d119464384fbce7a018c43f1bb2f23010`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:29:15 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 17 Nov 2018 06:49:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libssl1.0-dev 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:49:09 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:49:09 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 06:49:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 06:49:26 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:12:22 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:12:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:12:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaba2cc9227f93bd3ce41fa6ff372e0100ac4824870ebd167ee31b8b2ed221a`  
		Last Modified: Sat, 17 Nov 2018 07:39:43 GMT  
		Size: 143.5 MB (143492256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f403ad75fdbe95a64e48bfd4f871c50f7872adc895ef5ff8f683394f1c1cf336`  
		Last Modified: Sat, 17 Nov 2018 07:39:25 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8acab6ea588ffe100492ecb6489cc5f2615a6368ead72c747a4409d3be28723`  
		Last Modified: Sat, 17 Nov 2018 07:39:25 GMT  
		Size: 3.8 MB (3792805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417a03b23c457e9074d2d17399d33c6e4e5047b76a9318fe0a77e08ecad76389`  
		Last Modified: Sat, 17 Nov 2018 10:24:35 GMT  
		Size: 4.1 MB (4059677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5` - linux; arm variant v7

```console
$ docker pull elixir@sha256:62ab81aa2b890372ad9ee8aa0be79163c910095efcc6e080b3590742346bfd97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.3 MB (366328020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d673bbf7b19fe87b2e0f014d3cd800bd9d08aa33b62e4f0b2b6cd059c1e6f39`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:30:28 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 12:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:41:21 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:41:21 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:41:25 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:41:26 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:42:05 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:18:30 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:19:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:19:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002878cce7e14ca1293cd555eec033a6494913ae05e9b1b6a76701bb86dae153`  
		Last Modified: Wed, 05 Sep 2018 12:53:36 GMT  
		Size: 16.7 MB (16712872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a262dbf1b2c7fd841963ee65f24c265c5385068a36df528802e7ea0303aa0f`  
		Last Modified: Wed, 05 Sep 2018 12:54:08 GMT  
		Size: 39.8 MB (39764418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1af7e0e98d631929ae2550be66fec719178b6723cd1c000617ca718b1311ecc`  
		Last Modified: Wed, 05 Sep 2018 12:54:52 GMT  
		Size: 114.1 MB (114092262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f590e0792cc7dc852b710c42eec4009c72515b4bdaf37c3360e254bc09d1556f`  
		Last Modified: Sat, 20 Oct 2018 12:54:24 GMT  
		Size: 137.6 MB (137618250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9c6eb1e1a553fbab9dbe64e1053020ab7a12183cf98067be4051d852670d8b`  
		Last Modified: Sat, 20 Oct 2018 12:53:57 GMT  
		Size: 199.2 KB (199217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55e451e397e21edb20c49c75c6ce332fa0a81929deefe9bbba15058bbfd323b`  
		Last Modified: Sat, 20 Oct 2018 12:53:57 GMT  
		Size: 3.7 MB (3699807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081824c10a33952f53c0c217bc16a99d4cd0087acb3282590b559da0a3c875b6`  
		Last Modified: Tue, 30 Oct 2018 12:38:04 GMT  
		Size: 4.1 MB (4052806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:d2dee8378dcc1e5cfd31f14a6db38e1b4ecd4afb23009511ae0f4836929e5828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374785154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f40b7db8b55c110ffefe2c5b549520905b26cb12a56e35a2e54696d5b1007fa`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:26:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:47:33 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 06 Jun 2018 12:11:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:11:20 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:11:23 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:11:34 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:11:37 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:12:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 17:37:49 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 17:38:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 17:38:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9e408db2031cacf4541c01e9c992c2cdfd06fd26ad42c508faa3b0a71aae4`  
		Last Modified: Sat, 05 May 2018 09:44:04 GMT  
		Size: 41.0 MB (41017251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec222141bb55b79ea11b53648102f30631ebf7c65a2b10bcddd8ce4f83e1b3`  
		Last Modified: Sat, 05 May 2018 09:44:22 GMT  
		Size: 115.9 MB (115888398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd815e36d7f44152fb3c651c3848bd84765bac22b6f3eb61d2ea915e19f3661`  
		Last Modified: Wed, 06 Jun 2018 12:31:12 GMT  
		Size: 141.6 MB (141634670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a1fe6630cb0695ef09a7ed31454c04e817d5d95a2b5c748c186c4e2a6d840c`  
		Last Modified: Wed, 06 Jun 2018 12:30:37 GMT  
		Size: 199.3 KB (199251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9eb8319535dff651a5e79f9f93b8c2fa6e15a81d0c0be4ebf84f76bd24d9cbc`  
		Last Modified: Wed, 06 Jun 2018 12:30:39 GMT  
		Size: 3.3 MB (3331288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c39a04f77234e3a3666f41179b794524e72b39591677f91f2213e7931674ca`  
		Last Modified: Wed, 06 Jun 2018 17:42:29 GMT  
		Size: 4.1 MB (4053600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5` - linux; 386

```console
$ docker pull elixir@sha256:6e8d8ada69b39a16f06f1e931f8546402d0869c8e4d11db595eee4b8e6ef0487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.8 MB (401756665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf5e82ba51bb7009634112ca106d315fef6ffdbba35d9ca94c5d7d5382c8410`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:23:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:24:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:26:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:39:48 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 11:53:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:53:14 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:53:15 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:53:18 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:53:18 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:53:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:05:15 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:05:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:05:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98febec5483097f081c5032f812a7e64a5b4d73c4d741999bc664f6e3f048797`  
		Last Modified: Tue, 16 Oct 2018 21:40:20 GMT  
		Size: 19.8 MB (19835996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee4bfa90c6685c6307afa1e70690a9b39c02a9f1905e3138698722d145d7390`  
		Last Modified: Tue, 16 Oct 2018 21:41:12 GMT  
		Size: 44.0 MB (43952414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ab7bc92a6136ae8e9c1b759aa4abe47adbed4b0d263de521b309eb3268b12c`  
		Last Modified: Tue, 16 Oct 2018 21:42:32 GMT  
		Size: 135.2 MB (135188750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c43d1a6862a295825764cdbcb5e65b0d4ee6459ea3348a712a4c205901efb`  
		Last Modified: Sat, 20 Oct 2018 12:12:08 GMT  
		Size: 140.3 MB (140342812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8000ebfca046d0dbbed1d828f13935152dd8b07bcfc77ccca23fa2bd3826ccd`  
		Last Modified: Sat, 20 Oct 2018 12:11:48 GMT  
		Size: 199.2 KB (199248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a271fba588892315f05bef8553b8002d4f11122ab0985f63da1bd8aec783a1`  
		Last Modified: Sat, 20 Oct 2018 12:11:48 GMT  
		Size: 3.7 MB (3699767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4abfe8c1847b2fed9d8abdf8335c32052680ac8ae4d47595e9c377abd2afbcb`  
		Last Modified: Sat, 20 Oct 2018 13:11:37 GMT  
		Size: 4.1 MB (4053389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5` - linux; s390x

```console
$ docker pull elixir@sha256:bca281bf1f07b5269d923b6d8463df0686f95f3cd3a6d5df0a683fe644d2e69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.2 MB (385207427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88de06b5736ec55e20359dc43dded9d08b2b3de88143960c23a012e5d455f008`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:31:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:33:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:41:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 11:49:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 11:49:23 GMT
CMD ["erl"]
# Fri, 11 May 2018 11:49:24 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 11:49:26 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:01:28 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:01:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:24:58 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:25:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:25:17 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be7fda6df150d239266145f4a84caa9f37d32c535a19acbb408973995140fd`  
		Last Modified: Sat, 05 May 2018 12:45:40 GMT  
		Size: 17.8 MB (17787031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7861d9ab6f9ef13ede92760c03359fa98b5718a37494c7ae5f428bad6ab514d`  
		Last Modified: Sat, 05 May 2018 12:46:05 GMT  
		Size: 43.4 MB (43389402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db96feb68b1f770893290098b26b859f1842d5abad061e981d53fad43c8726b`  
		Last Modified: Sat, 05 May 2018 12:46:40 GMT  
		Size: 116.2 MB (116204466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735735f025b2f5bcf7bcbed66647477b742268c8711ab8980e82e94876027b29`  
		Last Modified: Fri, 11 May 2018 11:57:32 GMT  
		Size: 145.8 MB (145778708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44de871ab5870a600ac13373f8dc39c0b2a12ea4edebe8c78e73492b1be211`  
		Last Modified: Fri, 11 May 2018 11:57:15 GMT  
		Size: 199.2 KB (199216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f9a0aa4a63dce475e760b0e1a40b724c0090ec0344e34f800cee3dded109a6`  
		Last Modified: Wed, 06 Jun 2018 12:05:19 GMT  
		Size: 3.3 MB (3331286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025a735a5d95ba16521df1fadea09b9aad7cd924221bbfba31fd6d199e161b61`  
		Last Modified: Wed, 06 Jun 2018 12:29:22 GMT  
		Size: 4.1 MB (4051461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4.5-slim`

```console
$ docker pull elixir@sha256:abf325ac87bf5d1cf21db0be38fa55441b76b0f632a44cb8347dadbcb49e8d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.4.5-slim` - linux; amd64

```console
$ docker pull elixir@sha256:da4caae79abf5cd623fa5c8610b6af0b4910cb59e61448b44f52f463b8af202e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259965736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b279510cccbcb444016911e514387a1e040085ce7f5f46721e9479a72da5dd2d`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:49 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 17 Nov 2018 07:08:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.2 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:08:26 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:13:29 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:13:44 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:13:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b76a7680328e2eacd31001405696db018cca30c921e098fd1f42068f2c143`  
		Last Modified: Sat, 17 Nov 2018 07:41:20 GMT  
		Size: 210.5 MB (210495956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1c8a563f1baf6df3101e5cb378077cc9ddfd6a54155be5132abd808d8079e2`  
		Last Modified: Sat, 17 Nov 2018 10:25:36 GMT  
		Size: 4.1 MB (4149523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:98de9f07e4d740c15071f842535b35eddbd0a981239080967663765ca11b0072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208730151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261d0f22340d19f3790fa76789aec4b6fb6be3a6b6e9986e777ae4ab9eeb3d96`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:17:24 GMT
ENV OTP_VERSION=19.3.6.12
# Fri, 16 Nov 2018 13:26:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:26:45 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:58:11 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:59:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:59:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb99e98600a985c787446a58c24dc7a7eaf7aeac291c27875dc7ba67963e7a36`  
		Last Modified: Fri, 16 Nov 2018 13:46:20 GMT  
		Size: 154.2 MB (154249713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335d51dbc7758d2c33cb206feebb70cc55b7773ed1afa410d1ff4f62c74872b3`  
		Last Modified: Fri, 16 Nov 2018 21:02:32 GMT  
		Size: 4.2 MB (4200868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:b3b955b54689fcbb43be2db4f9ee373d1a18afc551edd7988561538f9a73e264
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214409761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0de27ed6d9740c452f0b79cc764cbe2fcdfb26e0b181b3894b02ac98cdcbef`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Fri, 11 May 2018 08:59:03 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 09:16:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 09:16:08 GMT
CMD ["erl"]
# Fri, 11 May 2018 10:09:26 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 11 May 2018 10:10:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 10:10:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80daaa33f7a46ed99fedfcd10354e7a6a0e64af246ce5fd19cb807074f88fb94`  
		Last Modified: Fri, 11 May 2018 09:19:00 GMT  
		Size: 158.8 MB (158761731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3dd8dfe06914bf9cb2321cd2daae8433f3819c3c958833df6e0780fcb5ae8`  
		Last Modified: Fri, 11 May 2018 10:12:51 GMT  
		Size: 4.2 MB (4201176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5-slim` - linux; 386

```console
$ docker pull elixir@sha256:2c0af3ae62364b4a09f848f0f72da8d53218636d7c5b6fe43ec92b0dd0dc7479
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222860905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5989eab208516c63e173645feef0f453edbd692a28b2561570017b93d7d7d0`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 11:53:53 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 12:06:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:06:19 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 13:06:06 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:06:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:06:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1ddae20cdd8e3298f04a4e503b5366d8ebd11870c334c950fc5bcaa43c7a9e`  
		Last Modified: Sat, 20 Oct 2018 12:13:11 GMT  
		Size: 164.2 MB (164176000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc71fb402aa4297d87a1b0c77e87614d2c815e853452eebe75bbdaf18f0c8811`  
		Last Modified: Sat, 20 Oct 2018 13:11:58 GMT  
		Size: 4.2 MB (4200616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5-slim` - linux; s390x

```console
$ docker pull elixir@sha256:49236252ee1fb3085d980df33eae64ff70a612852ab63647487984131134791d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222874060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cc2151cf02ee317f6cc82537b3549ceba25f8fb49e45ea4d4deadba3168b5`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Fri, 11 May 2018 11:50:10 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 11:56:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 11:56:30 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:25:26 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:25:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:25:46 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec32dcaae6281bc93aca7976b6f226580518793b652e691bd566240eb5d68c0`  
		Last Modified: Fri, 11 May 2018 11:58:20 GMT  
		Size: 164.2 MB (164208028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7296fbbad229fc3e8ccfc8a272dcb13abcc1fef54d87075a358d94d138935274`  
		Last Modified: Wed, 06 Jun 2018 12:29:45 GMT  
		Size: 4.2 MB (4200175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4-slim`

```console
$ docker pull elixir@sha256:abf325ac87bf5d1cf21db0be38fa55441b76b0f632a44cb8347dadbcb49e8d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.4-slim` - linux; amd64

```console
$ docker pull elixir@sha256:da4caae79abf5cd623fa5c8610b6af0b4910cb59e61448b44f52f463b8af202e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259965736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b279510cccbcb444016911e514387a1e040085ce7f5f46721e9479a72da5dd2d`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:49 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 17 Nov 2018 07:08:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.2 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:08:26 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:13:29 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:13:44 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:13:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b76a7680328e2eacd31001405696db018cca30c921e098fd1f42068f2c143`  
		Last Modified: Sat, 17 Nov 2018 07:41:20 GMT  
		Size: 210.5 MB (210495956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1c8a563f1baf6df3101e5cb378077cc9ddfd6a54155be5132abd808d8079e2`  
		Last Modified: Sat, 17 Nov 2018 10:25:36 GMT  
		Size: 4.1 MB (4149523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:98de9f07e4d740c15071f842535b35eddbd0a981239080967663765ca11b0072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208730151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261d0f22340d19f3790fa76789aec4b6fb6be3a6b6e9986e777ae4ab9eeb3d96`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:17:24 GMT
ENV OTP_VERSION=19.3.6.12
# Fri, 16 Nov 2018 13:26:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:26:45 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:58:11 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:59:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:59:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb99e98600a985c787446a58c24dc7a7eaf7aeac291c27875dc7ba67963e7a36`  
		Last Modified: Fri, 16 Nov 2018 13:46:20 GMT  
		Size: 154.2 MB (154249713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335d51dbc7758d2c33cb206feebb70cc55b7773ed1afa410d1ff4f62c74872b3`  
		Last Modified: Fri, 16 Nov 2018 21:02:32 GMT  
		Size: 4.2 MB (4200868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:b3b955b54689fcbb43be2db4f9ee373d1a18afc551edd7988561538f9a73e264
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214409761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0de27ed6d9740c452f0b79cc764cbe2fcdfb26e0b181b3894b02ac98cdcbef`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Fri, 11 May 2018 08:59:03 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 09:16:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 09:16:08 GMT
CMD ["erl"]
# Fri, 11 May 2018 10:09:26 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 11 May 2018 10:10:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 10:10:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80daaa33f7a46ed99fedfcd10354e7a6a0e64af246ce5fd19cb807074f88fb94`  
		Last Modified: Fri, 11 May 2018 09:19:00 GMT  
		Size: 158.8 MB (158761731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3dd8dfe06914bf9cb2321cd2daae8433f3819c3c958833df6e0780fcb5ae8`  
		Last Modified: Fri, 11 May 2018 10:12:51 GMT  
		Size: 4.2 MB (4201176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4-slim` - linux; 386

```console
$ docker pull elixir@sha256:2c0af3ae62364b4a09f848f0f72da8d53218636d7c5b6fe43ec92b0dd0dc7479
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222860905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5989eab208516c63e173645feef0f453edbd692a28b2561570017b93d7d7d0`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 11:53:53 GMT
ENV OTP_VERSION=19.3.6.12
# Sat, 20 Oct 2018 12:06:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f5ff65cde3f2db6f1dd61f6985136fcf87b55fa3f85e17ee513cc05dbe2da635" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:06:19 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 13:06:06 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:06:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 13:06:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1ddae20cdd8e3298f04a4e503b5366d8ebd11870c334c950fc5bcaa43c7a9e`  
		Last Modified: Sat, 20 Oct 2018 12:13:11 GMT  
		Size: 164.2 MB (164176000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc71fb402aa4297d87a1b0c77e87614d2c815e853452eebe75bbdaf18f0c8811`  
		Last Modified: Sat, 20 Oct 2018 13:11:58 GMT  
		Size: 4.2 MB (4200616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4-slim` - linux; s390x

```console
$ docker pull elixir@sha256:49236252ee1fb3085d980df33eae64ff70a612852ab63647487984131134791d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222874060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7cc2151cf02ee317f6cc82537b3549ceba25f8fb49e45ea4d4deadba3168b5`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Fri, 11 May 2018 11:50:10 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 11:56:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 11:56:30 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:25:26 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:25:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:25:46 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec32dcaae6281bc93aca7976b6f226580518793b652e691bd566240eb5d68c0`  
		Last Modified: Fri, 11 May 2018 11:58:20 GMT  
		Size: 164.2 MB (164208028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7296fbbad229fc3e8ccfc8a272dcb13abcc1fef54d87075a358d94d138935274`  
		Last Modified: Wed, 06 Jun 2018 12:29:45 GMT  
		Size: 4.2 MB (4200175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5`

```console
$ docker pull elixir@sha256:ea16c639bde2de0ff566c19424c973e9908d2738651224db3211e587dc9e632b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5` - linux; amd64

```console
$ docker pull elixir@sha256:4dd25a5f3bba04d15c567196e59a0b6ba3bfd4696eeab78a73fabb319af381c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.4 MB (470408503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50333bef3be62bf7e1d9c3a56f2175b0169a7cacd62ab39a337cede0d0a79ed3`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:24:58 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 05:46:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:47:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 05:47:04 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 05:47:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 05:47:09 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:47:43 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:06:03 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:08:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 10:08:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3b3af904c5eb26954ac72e06c8c9a7d47c8af4a0d58a70d9cbfc64a410cc7`  
		Last Modified: Sat, 17 Nov 2018 07:35:44 GMT  
		Size: 137.1 MB (137113508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072a1f8e6987b54fe7949a96358ba6bddd529d7af5a4a280ffbd7077083f206`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 202.0 KB (201992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d0b54475da512d8eb1bb7183eb1f71192545d7ed8dcda423b6c1fff1000e1a`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 3.8 MB (3812968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1923d41b5077deb7d0a13d688a4384cb242b97939fb198c3ad95d35acc4c1bc7`  
		Last Modified: Sat, 17 Nov 2018 10:21:49 GMT  
		Size: 5.6 MB (5602536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f6d53f08d0d32599398f20d14d2f193ac9491bf6e9221f2d8c83d629f22517ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435340462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cf03c05c833c48654cfc194103fe482c4b6ba4f81deeba82e6b8fd0ef9e3ab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:20:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:05 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 20:53:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:53:05 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:53:06 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 20:53:11 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 20:53:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 20:53:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 20:55:28 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:56:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 20:56:45 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c6b4b1b23cbb773552250a62bf82dd97d2ab0ca2725ffa4f048d7701260139`  
		Last Modified: Fri, 16 Nov 2018 18:33:32 GMT  
		Size: 194.0 MB (194012504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fa793febd72a04302d7cd798b77e8962d791d6f631bbb4e999d35b22a2542b`  
		Last Modified: Fri, 16 Nov 2018 21:01:31 GMT  
		Size: 129.9 MB (129899477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8f5011fa11e88738c506366ea94fd12e18f7780a92f861c29a32b5734dfbb9`  
		Last Modified: Fri, 16 Nov 2018 21:01:06 GMT  
		Size: 202.0 KB (201967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb018379369162bcec22ac2917ccf38d27c1ee6b7d42f4408d8c63fb09cb646`  
		Last Modified: Fri, 16 Nov 2018 21:01:06 GMT  
		Size: 3.8 MB (3811111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e284f8d3bb3ddea3437cfda7ebb59442aa473d79db39588f68c642d29f97070`  
		Last Modified: Fri, 16 Nov 2018 21:01:07 GMT  
		Size: 5.6 MB (5601100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:877f5f84035db2ebd79519d65162d67619b659911937b0ea43b4543c5a2da62d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.4 MB (448436517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94140b1e7bab9c19a86b50b5b51fd2c2ca47eb733a56edee20cce88ec99ba96b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:11:02 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:27:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:27:33 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 10:27:34 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 10:27:41 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 10:27:49 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 10:28:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 08:02:21 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:04:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 08:04:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ee3a658489003ce5f67894e1a734ec7f759f9f550c0009f082630655c1e62d`  
		Last Modified: Fri, 16 Nov 2018 11:08:11 GMT  
		Size: 133.3 MB (133290924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8882f4a74f6fd3e0e50bdf3b8d9bad9ca0bdf5d34113b7344f523fa2c7e62`  
		Last Modified: Fri, 16 Nov 2018 11:07:24 GMT  
		Size: 202.0 KB (202005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f47817ea436b5059b01290cd29f51164d0056c16058f31b2f2173b29f56738`  
		Last Modified: Fri, 16 Nov 2018 11:07:25 GMT  
		Size: 3.8 MB (3809898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a893ef866b093ccd8d62fe827bf2524e70bab94eed8b59a33abd85a9fd59be8`  
		Last Modified: Sat, 17 Nov 2018 08:10:12 GMT  
		Size: 5.6 MB (5602706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; 386

```console
$ docker pull elixir@sha256:cdd0eaca85aa239f1b3715ce9f1249347da6ddee7bc1d20e78d4705f5d42295c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.7 MB (474694020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eab2f61653f1ebfdfd5f57c9b387089705c47a30432d03a610afef4d607d7b4`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:33:02 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:43:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:43:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:43:18 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 06 Nov 2018 12:43:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 06 Nov 2018 12:43:21 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 06 Nov 2018 12:43:44 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 13:24:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:25:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 13:25:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a90598a913fd4c79f5ef54b22b5d6c4433233a8929a195d0bebb04f728bfc6`  
		Last Modified: Tue, 06 Nov 2018 13:04:27 GMT  
		Size: 133.9 MB (133914232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8e5b9699c561d8f4b47b9272adb4685203771ad8d36f81a7557b4dfd744db`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 202.0 KB (202011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75509d922f69d2a36604384bb057738238f0c8deb157d38df36da0db9be1ef8a`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 3.8 MB (3779434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a04152746dc13456e0994d4bef52b9a99fe38652b3e375af3a1ed3b6942b30`  
		Last Modified: Tue, 06 Nov 2018 13:27:43 GMT  
		Size: 5.6 MB (5601003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; ppc64le

```console
$ docker pull elixir@sha256:f808743789077bb35c5de0e5af83385292c34768e2abb6b49142df9efb7fff8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.1 MB (463057174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b216074b451ce0bd47f4e62a8e8bd4f5f158438dce35a991083d62c112ee10d9`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:07 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:35:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:55 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:56 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:36:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:36:08 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:36:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 06:59:08 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:00:26 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 07:00:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3edc44c9a295027e68b0dcb15eb40892492e241b4999c5968998ecd729cfb3`  
		Last Modified: Fri, 16 Nov 2018 22:59:16 GMT  
		Size: 134.7 MB (134652898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcd6b369a408c09123a7f260f062c2181e520ac422fbed2e89d6daeb4864d5`  
		Last Modified: Fri, 16 Nov 2018 22:58:41 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c9200b4db39479825c13b59a083f4b7dda2b50a849874803ac3eba40a27131`  
		Last Modified: Fri, 16 Nov 2018 22:58:43 GMT  
		Size: 3.8 MB (3811816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1bd7d65a551086fca6ce700a1e9e6fd851e88ef669b1d07b392ccc23f77b4`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.6 MB (5602845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; s390x

```console
$ docker pull elixir@sha256:acca19efdf7531e859fff39cb370417739e14aa848fcfe6681c94241355be69e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463222994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75183e79d5d994d48949611982333a3ab072f358878c548e7621d4da5911842`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:37 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:18:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:18:30 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:18:31 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:18:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:18:43 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:19:23 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:36:04 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:37:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 22:37:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1208c63ecdc31d86d5d5f5068f424212caa65f2f252c2ecedcb95f234ac5ea17`  
		Last Modified: Fri, 16 Nov 2018 13:53:45 GMT  
		Size: 138.1 MB (138076053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fc536b5cde5a96d26d85ffeaf1b7ab499cb59f19eace8d7e57a8ee1ef4ea96`  
		Last Modified: Fri, 16 Nov 2018 13:53:04 GMT  
		Size: 202.0 KB (201980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257418a11368b102fd959809fab4bf961099064178137b69dcab0af7daa6c3c2`  
		Last Modified: Fri, 16 Nov 2018 13:53:05 GMT  
		Size: 3.8 MB (3810056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3aa72c79aa1c3c40d467469b76be762e1424d2bbf33b83d328c07fb64a3089`  
		Last Modified: Fri, 16 Nov 2018 22:40:08 GMT  
		Size: 5.6 MB (5602314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3`

```console
$ docker pull elixir@sha256:ea16c639bde2de0ff566c19424c973e9908d2738651224db3211e587dc9e632b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5.3` - linux; amd64

```console
$ docker pull elixir@sha256:4dd25a5f3bba04d15c567196e59a0b6ba3bfd4696eeab78a73fabb319af381c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.4 MB (470408503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50333bef3be62bf7e1d9c3a56f2175b0169a7cacd62ab39a337cede0d0a79ed3`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:24:58 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 05:46:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:47:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 05:47:04 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 05:47:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 05:47:09 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:47:43 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:06:03 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:08:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 10:08:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3b3af904c5eb26954ac72e06c8c9a7d47c8af4a0d58a70d9cbfc64a410cc7`  
		Last Modified: Sat, 17 Nov 2018 07:35:44 GMT  
		Size: 137.1 MB (137113508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072a1f8e6987b54fe7949a96358ba6bddd529d7af5a4a280ffbd7077083f206`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 202.0 KB (201992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d0b54475da512d8eb1bb7183eb1f71192545d7ed8dcda423b6c1fff1000e1a`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 3.8 MB (3812968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1923d41b5077deb7d0a13d688a4384cb242b97939fb198c3ad95d35acc4c1bc7`  
		Last Modified: Sat, 17 Nov 2018 10:21:49 GMT  
		Size: 5.6 MB (5602536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f6d53f08d0d32599398f20d14d2f193ac9491bf6e9221f2d8c83d629f22517ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435340462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cf03c05c833c48654cfc194103fe482c4b6ba4f81deeba82e6b8fd0ef9e3ab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:20:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:05 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 20:53:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:53:05 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:53:06 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 20:53:11 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 20:53:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 20:53:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 20:55:28 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:56:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 20:56:45 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c6b4b1b23cbb773552250a62bf82dd97d2ab0ca2725ffa4f048d7701260139`  
		Last Modified: Fri, 16 Nov 2018 18:33:32 GMT  
		Size: 194.0 MB (194012504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fa793febd72a04302d7cd798b77e8962d791d6f631bbb4e999d35b22a2542b`  
		Last Modified: Fri, 16 Nov 2018 21:01:31 GMT  
		Size: 129.9 MB (129899477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8f5011fa11e88738c506366ea94fd12e18f7780a92f861c29a32b5734dfbb9`  
		Last Modified: Fri, 16 Nov 2018 21:01:06 GMT  
		Size: 202.0 KB (201967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb018379369162bcec22ac2917ccf38d27c1ee6b7d42f4408d8c63fb09cb646`  
		Last Modified: Fri, 16 Nov 2018 21:01:06 GMT  
		Size: 3.8 MB (3811111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e284f8d3bb3ddea3437cfda7ebb59442aa473d79db39588f68c642d29f97070`  
		Last Modified: Fri, 16 Nov 2018 21:01:07 GMT  
		Size: 5.6 MB (5601100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:877f5f84035db2ebd79519d65162d67619b659911937b0ea43b4543c5a2da62d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.4 MB (448436517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94140b1e7bab9c19a86b50b5b51fd2c2ca47eb733a56edee20cce88ec99ba96b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:11:02 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:27:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:27:33 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 10:27:34 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 10:27:41 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 10:27:49 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 10:28:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 08:02:21 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:04:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 08:04:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ee3a658489003ce5f67894e1a734ec7f759f9f550c0009f082630655c1e62d`  
		Last Modified: Fri, 16 Nov 2018 11:08:11 GMT  
		Size: 133.3 MB (133290924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8882f4a74f6fd3e0e50bdf3b8d9bad9ca0bdf5d34113b7344f523fa2c7e62`  
		Last Modified: Fri, 16 Nov 2018 11:07:24 GMT  
		Size: 202.0 KB (202005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f47817ea436b5059b01290cd29f51164d0056c16058f31b2f2173b29f56738`  
		Last Modified: Fri, 16 Nov 2018 11:07:25 GMT  
		Size: 3.8 MB (3809898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a893ef866b093ccd8d62fe827bf2524e70bab94eed8b59a33abd85a9fd59be8`  
		Last Modified: Sat, 17 Nov 2018 08:10:12 GMT  
		Size: 5.6 MB (5602706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; 386

```console
$ docker pull elixir@sha256:cdd0eaca85aa239f1b3715ce9f1249347da6ddee7bc1d20e78d4705f5d42295c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.7 MB (474694020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eab2f61653f1ebfdfd5f57c9b387089705c47a30432d03a610afef4d607d7b4`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:33:02 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:43:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:43:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:43:18 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 06 Nov 2018 12:43:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 06 Nov 2018 12:43:21 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 06 Nov 2018 12:43:44 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 13:24:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:25:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 13:25:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a90598a913fd4c79f5ef54b22b5d6c4433233a8929a195d0bebb04f728bfc6`  
		Last Modified: Tue, 06 Nov 2018 13:04:27 GMT  
		Size: 133.9 MB (133914232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8e5b9699c561d8f4b47b9272adb4685203771ad8d36f81a7557b4dfd744db`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 202.0 KB (202011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75509d922f69d2a36604384bb057738238f0c8deb157d38df36da0db9be1ef8a`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 3.8 MB (3779434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a04152746dc13456e0994d4bef52b9a99fe38652b3e375af3a1ed3b6942b30`  
		Last Modified: Tue, 06 Nov 2018 13:27:43 GMT  
		Size: 5.6 MB (5601003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; ppc64le

```console
$ docker pull elixir@sha256:f808743789077bb35c5de0e5af83385292c34768e2abb6b49142df9efb7fff8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.1 MB (463057174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b216074b451ce0bd47f4e62a8e8bd4f5f158438dce35a991083d62c112ee10d9`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:07 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:35:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:55 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:56 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:36:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:36:08 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:36:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 06:59:08 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:00:26 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 07:00:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3edc44c9a295027e68b0dcb15eb40892492e241b4999c5968998ecd729cfb3`  
		Last Modified: Fri, 16 Nov 2018 22:59:16 GMT  
		Size: 134.7 MB (134652898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcd6b369a408c09123a7f260f062c2181e520ac422fbed2e89d6daeb4864d5`  
		Last Modified: Fri, 16 Nov 2018 22:58:41 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c9200b4db39479825c13b59a083f4b7dda2b50a849874803ac3eba40a27131`  
		Last Modified: Fri, 16 Nov 2018 22:58:43 GMT  
		Size: 3.8 MB (3811816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1bd7d65a551086fca6ce700a1e9e6fd851e88ef669b1d07b392ccc23f77b4`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.6 MB (5602845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; s390x

```console
$ docker pull elixir@sha256:acca19efdf7531e859fff39cb370417739e14aa848fcfe6681c94241355be69e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463222994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75183e79d5d994d48949611982333a3ab072f358878c548e7621d4da5911842`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:37 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:18:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:18:30 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:18:31 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:18:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:18:43 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:19:23 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:36:04 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:37:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 22:37:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1208c63ecdc31d86d5d5f5068f424212caa65f2f252c2ecedcb95f234ac5ea17`  
		Last Modified: Fri, 16 Nov 2018 13:53:45 GMT  
		Size: 138.1 MB (138076053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fc536b5cde5a96d26d85ffeaf1b7ab499cb59f19eace8d7e57a8ee1ef4ea96`  
		Last Modified: Fri, 16 Nov 2018 13:53:04 GMT  
		Size: 202.0 KB (201980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257418a11368b102fd959809fab4bf961099064178137b69dcab0af7daa6c3c2`  
		Last Modified: Fri, 16 Nov 2018 13:53:05 GMT  
		Size: 3.8 MB (3810056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3aa72c79aa1c3c40d467469b76be762e1424d2bbf33b83d328c07fb64a3089`  
		Last Modified: Fri, 16 Nov 2018 22:40:08 GMT  
		Size: 5.6 MB (5602314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3-alpine`

```console
$ docker pull elixir@sha256:7c026e85cb4664e1bfd9ba97053c5c44414a98c6cda6aafc931b7f02c6178e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5.3-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:873bd3f6c25b20de36399784b7d3d742d47005f9fe9f5c4ab3973beb3189d15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55467620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea131fd2176b41df049a30b33a8167e6e1734d3c368fd5ac4fc08cdfa4c6dbc`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 06:10:21 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:10:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:28:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 06:28:30 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:11:00 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:11:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 10:11:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29b17d7d3f88ca48cb5f1f13cbd023fe864b5676859a02a5f366a67b5934bb`  
		Last Modified: Sat, 17 Nov 2018 07:38:10 GMT  
		Size: 49.3 MB (49342347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f371badbf3b1ffa245a28b6549a27381a5d0e011ed26f25d0b33a554d15da9d8`  
		Last Modified: Sat, 17 Nov 2018 10:23:39 GMT  
		Size: 3.9 MB (3918342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:9c8a853a17617cdaa2b8ef50b43cdade99c3cf7f72e7009d3e6b46083193902b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52055052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8398df33d796b22edda181669fe2902230d8f7167fe7e8c959504129bee048`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 10:45:04 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:45:05 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 11:01:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 11:01:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:06:11 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:06:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 08:06:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a30fd8906c376ac7be25bc3c8754fe9e76c805f843e109b6a3fd5870907b94`  
		Last Modified: Fri, 16 Nov 2018 11:12:03 GMT  
		Size: 46.0 MB (46037797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c666f62f66c210c50bad91df8af6f074a37d482682eb3a39deede3d8a339d9`  
		Last Modified: Sat, 17 Nov 2018 08:11:34 GMT  
		Size: 3.9 MB (3917317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; 386

```console
$ docker pull elixir@sha256:ea2647e6a405ce62f741331734f4bef9843fb3d9e9ae21f35ebfc4caadd3f1fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097797502ab30169c16dcf931acc7710cae720a8abeebc443ab59cb3774e013d`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Tue, 06 Nov 2018 12:53:01 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 13:03:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 06 Nov 2018 13:03:24 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:25:58 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:26:00 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 06 Nov 2018 13:26:00 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299202ee132af25f65c4e439198ec33013f003027ab927174448c4abadaec21`  
		Last Modified: Tue, 06 Nov 2018 13:06:20 GMT  
		Size: 45.4 MB (45357608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e6daa89a9fb840ba57209c2f1c00137d73c7eaf7178bc152cad994c4b5d240`  
		Last Modified: Tue, 06 Nov 2018 13:28:29 GMT  
		Size: 3.9 MB (3917277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:babfacf6acdef464b906e7ee82e71df44f8ea255e30493ac5a362e7b4c50d4f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c848381bbc47938f7bef4fe302296b88f3f1165c03483ab9b2db486cd6ce69c5`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:45:51 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:52 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:52:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:52:55 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 07:01:53 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:01:57 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 07:01:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0fb3657f89c6671ee021ac27c2b9060be961bb94f660c8aa2423c133502365`  
		Last Modified: Fri, 16 Nov 2018 23:01:36 GMT  
		Size: 46.4 MB (46405646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec536fe24211540574d5a5d9e822ed1a9b7044768e1ade431f6c2d8db862f1`  
		Last Modified: Sat, 17 Nov 2018 07:09:18 GMT  
		Size: 3.9 MB (3918509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:304df61349b567bd939d130d989f6597793dc2ffe4445a1e7e953c2267c5c2ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52620068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca6bc5f0b8f1fdb6f56bcfe6fb09cb390e6224a07385b952537d2524b879c4`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:31:11 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:31:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:48:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 13:48:02 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:38:26 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:38:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 16 Nov 2018 22:38:29 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e55a9c60d42b90cbffa63fd3b1391322585b73f0b4494ad2768bef8b1b728c`  
		Last Modified: Fri, 16 Nov 2018 13:55:34 GMT  
		Size: 46.4 MB (46394864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4123a11d17717efa9478f057e8f8f48aad4d63238a5349d8e1c1c8963b4292e`  
		Last Modified: Fri, 16 Nov 2018 22:40:30 GMT  
		Size: 3.9 MB (3917282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3-slim`

```console
$ docker pull elixir@sha256:0eb5e22217c47f1eebbed2f6627ea7335aea0599ec1f54ae8cac0bf4597113c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5.3-slim` - linux; amd64

```console
$ docker pull elixir@sha256:b50ad5836d8ddef99e392284dc8c87dd4578438508aedbe1d9ca5c4520903d67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114777279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9543ba4e26b23c52f3c20192868194c243d608ab0f82ae7e014d19bb2a4cf5a8`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:48:04 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:09:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:09:37 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:09:47 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:10:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:10:09 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08eb9d09eaeb47d6b8ab0b1ce6b3d811fc3e2607f707c944504286cdcb4e273`  
		Last Modified: Sat, 17 Nov 2018 07:37:03 GMT  
		Size: 65.1 MB (65120611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd50917cd32a9a528ef6c88f145f2e05142c8c7cbcf2c2f5f090538d34271c1`  
		Last Modified: Sat, 17 Nov 2018 10:22:42 GMT  
		Size: 4.3 MB (4336411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:75ed2b77fd3c0ba972af9f8bcc5bbcc613e69545337a66405b7119a5b9b1c0a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106504504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94ecd43d2d5ace9a278d7e41391d6de698189510a91c7833a4b72064ee4390a`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:28 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:17:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:17:07 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:57:19 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:57:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:57:42 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bfc7b19ddb3b550923f890d0aff1bf3a05128607b38895bbd56d319043f7e`  
		Last Modified: Fri, 16 Nov 2018 13:44:30 GMT  
		Size: 60.1 MB (60092171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0352f0a04c4ae3abf0ad2a271b15d30fab85f0fc157df6c44d14a7cc850924f`  
		Last Modified: Fri, 16 Nov 2018 21:02:06 GMT  
		Size: 4.3 MB (4336193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:275cc83f72bfe298c0d4f3c7560ea0e18779c95e58111f8f6c5c661c07361866
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108733618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f1c3e9ce7067a736705a3a750239da9f13c219a81221f57fce9c75a8c0841e`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:29:35 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:44:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:44:21 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:04:54 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:05:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 08:05:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f2bff52e1b665667858e9ecdbf82f7c2d7514231a51c3ece2618a040889db6`  
		Last Modified: Fri, 16 Nov 2018 11:10:11 GMT  
		Size: 61.3 MB (61280637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8826e227fa1593783204bffc4e0d2eb2ebb29cb6ee227e68655b9a577e4a7b`  
		Last Modified: Sat, 17 Nov 2018 08:10:54 GMT  
		Size: 4.3 MB (4336281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; 386

```console
$ docker pull elixir@sha256:efd455947abd39f4d11311f5e6727dbd5231a5387776f3e2df30df8e17f98963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118513235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c3c7fc0e8b1621a5f43953c69930c7ee75c4255dc7422d2dc1b421ed6a3644`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 06 Nov 2018 12:44:03 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:52:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:52:42 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:25:31 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:25:44 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:25:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e56ffe2c975ceda5d1f3af9da6f125ab53b7887c1ca06f167be0aeb8de8cb7`  
		Last Modified: Tue, 06 Nov 2018 13:05:27 GMT  
		Size: 68.1 MB (68137791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f75ab734b39f686e4c4bf19afd2bf8f9aff84465085201282241da46f8e0ca3`  
		Last Modified: Tue, 06 Nov 2018 13:28:06 GMT  
		Size: 4.3 MB (4336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:eba9a774f1d4916faf9579f49e9400c58aa5232d6acfa8bf4d4d973c62000032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112113843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f41ae9d6ca597750548491f201e7b976dc3526924b2146e057f0bb4f502f113`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:37:17 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:45:28 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 07:00:46 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:01:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:01:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677d367798192852266b47dac3e4913f66748e51b374b9083199e4d0aa13a6`  
		Last Modified: Fri, 16 Nov 2018 23:00:36 GMT  
		Size: 62.2 MB (62171013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdccf4a42cb06796afea9d646790a59d8a8099ab6d03cee7cbde0ddd45a178f9`  
		Last Modified: Sat, 17 Nov 2018 07:08:46 GMT  
		Size: 4.3 MB (4336752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; s390x

```console
$ docker pull elixir@sha256:b0e48cf28264779f59c92908805a096e73014ab7f0bcf3106c26f5911a4e69ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113295323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb7d079bcd0d8e6b3d2dc0706ed7e6b05ee9839ee2093266505aa3545a626c1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:19:36 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:30:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:30:53 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:37:56 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:38:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:38:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f257c06ce1d3bfffaf11ab367e9b52468c4e4fee80fa420968daa766e98395c9`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 63.8 MB (63754834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13595481106ceebdb9d4043c3f4bbe8a415e481f38a1fa99964ceb6f3432762`  
		Last Modified: Fri, 16 Nov 2018 22:40:19 GMT  
		Size: 4.3 MB (4335670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5-alpine`

```console
$ docker pull elixir@sha256:7c026e85cb4664e1bfd9ba97053c5c44414a98c6cda6aafc931b7f02c6178e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:873bd3f6c25b20de36399784b7d3d742d47005f9fe9f5c4ab3973beb3189d15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55467620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea131fd2176b41df049a30b33a8167e6e1734d3c368fd5ac4fc08cdfa4c6dbc`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 06:10:21 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:10:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:28:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 06:28:30 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:11:00 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:11:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 10:11:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29b17d7d3f88ca48cb5f1f13cbd023fe864b5676859a02a5f366a67b5934bb`  
		Last Modified: Sat, 17 Nov 2018 07:38:10 GMT  
		Size: 49.3 MB (49342347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f371badbf3b1ffa245a28b6549a27381a5d0e011ed26f25d0b33a554d15da9d8`  
		Last Modified: Sat, 17 Nov 2018 10:23:39 GMT  
		Size: 3.9 MB (3918342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:9c8a853a17617cdaa2b8ef50b43cdade99c3cf7f72e7009d3e6b46083193902b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52055052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8398df33d796b22edda181669fe2902230d8f7167fe7e8c959504129bee048`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 10:45:04 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:45:05 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 11:01:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 11:01:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:06:11 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:06:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 08:06:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a30fd8906c376ac7be25bc3c8754fe9e76c805f843e109b6a3fd5870907b94`  
		Last Modified: Fri, 16 Nov 2018 11:12:03 GMT  
		Size: 46.0 MB (46037797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c666f62f66c210c50bad91df8af6f074a37d482682eb3a39deede3d8a339d9`  
		Last Modified: Sat, 17 Nov 2018 08:11:34 GMT  
		Size: 3.9 MB (3917317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; 386

```console
$ docker pull elixir@sha256:ea2647e6a405ce62f741331734f4bef9843fb3d9e9ae21f35ebfc4caadd3f1fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51546520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097797502ab30169c16dcf931acc7710cae720a8abeebc443ab59cb3774e013d`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Tue, 06 Nov 2018 12:53:01 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 13:03:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 06 Nov 2018 13:03:24 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:25:58 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:26:00 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 06 Nov 2018 13:26:00 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299202ee132af25f65c4e439198ec33013f003027ab927174448c4abadaec21`  
		Last Modified: Tue, 06 Nov 2018 13:06:20 GMT  
		Size: 45.4 MB (45357608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e6daa89a9fb840ba57209c2f1c00137d73c7eaf7178bc152cad994c4b5d240`  
		Last Modified: Tue, 06 Nov 2018 13:28:29 GMT  
		Size: 3.9 MB (3917277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:babfacf6acdef464b906e7ee82e71df44f8ea255e30493ac5a362e7b4c50d4f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52519558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c848381bbc47938f7bef4fe302296b88f3f1165c03483ab9b2db486cd6ce69c5`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:45:51 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:52 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:52:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:52:55 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 07:01:53 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:01:57 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 07:01:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0fb3657f89c6671ee021ac27c2b9060be961bb94f660c8aa2423c133502365`  
		Last Modified: Fri, 16 Nov 2018 23:01:36 GMT  
		Size: 46.4 MB (46405646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ec536fe24211540574d5a5d9e822ed1a9b7044768e1ade431f6c2d8db862f1`  
		Last Modified: Sat, 17 Nov 2018 07:09:18 GMT  
		Size: 3.9 MB (3918509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:304df61349b567bd939d130d989f6597793dc2ffe4445a1e7e953c2267c5c2ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52620068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dca6bc5f0b8f1fdb6f56bcfe6fb09cb390e6224a07385b952537d2524b879c4`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:31:11 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:31:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:48:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 13:48:02 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:38:26 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:38:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 16 Nov 2018 22:38:29 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e55a9c60d42b90cbffa63fd3b1391322585b73f0b4494ad2768bef8b1b728c`  
		Last Modified: Fri, 16 Nov 2018 13:55:34 GMT  
		Size: 46.4 MB (46394864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4123a11d17717efa9478f057e8f8f48aad4d63238a5349d8e1c1c8963b4292e`  
		Last Modified: Fri, 16 Nov 2018 22:40:30 GMT  
		Size: 3.9 MB (3917282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5-slim`

```console
$ docker pull elixir@sha256:0eb5e22217c47f1eebbed2f6627ea7335aea0599ec1f54ae8cac0bf4597113c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.5-slim` - linux; amd64

```console
$ docker pull elixir@sha256:b50ad5836d8ddef99e392284dc8c87dd4578438508aedbe1d9ca5c4520903d67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114777279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9543ba4e26b23c52f3c20192868194c243d608ab0f82ae7e014d19bb2a4cf5a8`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:48:04 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:09:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:09:37 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:09:47 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:10:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:10:09 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08eb9d09eaeb47d6b8ab0b1ce6b3d811fc3e2607f707c944504286cdcb4e273`  
		Last Modified: Sat, 17 Nov 2018 07:37:03 GMT  
		Size: 65.1 MB (65120611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd50917cd32a9a528ef6c88f145f2e05142c8c7cbcf2c2f5f090538d34271c1`  
		Last Modified: Sat, 17 Nov 2018 10:22:42 GMT  
		Size: 4.3 MB (4336411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:75ed2b77fd3c0ba972af9f8bcc5bbcc613e69545337a66405b7119a5b9b1c0a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106504504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94ecd43d2d5ace9a278d7e41391d6de698189510a91c7833a4b72064ee4390a`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:28 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:17:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:17:07 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:57:19 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:57:41 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:57:42 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bfc7b19ddb3b550923f890d0aff1bf3a05128607b38895bbd56d319043f7e`  
		Last Modified: Fri, 16 Nov 2018 13:44:30 GMT  
		Size: 60.1 MB (60092171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0352f0a04c4ae3abf0ad2a271b15d30fab85f0fc157df6c44d14a7cc850924f`  
		Last Modified: Fri, 16 Nov 2018 21:02:06 GMT  
		Size: 4.3 MB (4336193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:275cc83f72bfe298c0d4f3c7560ea0e18779c95e58111f8f6c5c661c07361866
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108733618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f1c3e9ce7067a736705a3a750239da9f13c219a81221f57fce9c75a8c0841e`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:29:35 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:44:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:44:21 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:04:54 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:05:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 08:05:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f2bff52e1b665667858e9ecdbf82f7c2d7514231a51c3ece2618a040889db6`  
		Last Modified: Fri, 16 Nov 2018 11:10:11 GMT  
		Size: 61.3 MB (61280637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8826e227fa1593783204bffc4e0d2eb2ebb29cb6ee227e68655b9a577e4a7b`  
		Last Modified: Sat, 17 Nov 2018 08:10:54 GMT  
		Size: 4.3 MB (4336281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; 386

```console
$ docker pull elixir@sha256:efd455947abd39f4d11311f5e6727dbd5231a5387776f3e2df30df8e17f98963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118513235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c3c7fc0e8b1621a5f43953c69930c7ee75c4255dc7422d2dc1b421ed6a3644`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 06 Nov 2018 12:44:03 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:52:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:52:42 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:25:31 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:25:44 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:25:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e56ffe2c975ceda5d1f3af9da6f125ab53b7887c1ca06f167be0aeb8de8cb7`  
		Last Modified: Tue, 06 Nov 2018 13:05:27 GMT  
		Size: 68.1 MB (68137791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f75ab734b39f686e4c4bf19afd2bf8f9aff84465085201282241da46f8e0ca3`  
		Last Modified: Tue, 06 Nov 2018 13:28:06 GMT  
		Size: 4.3 MB (4336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:eba9a774f1d4916faf9579f49e9400c58aa5232d6acfa8bf4d4d973c62000032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112113843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f41ae9d6ca597750548491f201e7b976dc3526924b2146e057f0bb4f502f113`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:37:17 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:45:28 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 07:00:46 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:01:34 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:01:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677d367798192852266b47dac3e4913f66748e51b374b9083199e4d0aa13a6`  
		Last Modified: Fri, 16 Nov 2018 23:00:36 GMT  
		Size: 62.2 MB (62171013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdccf4a42cb06796afea9d646790a59d8a8099ab6d03cee7cbde0ddd45a178f9`  
		Last Modified: Sat, 17 Nov 2018 07:08:46 GMT  
		Size: 4.3 MB (4336752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; s390x

```console
$ docker pull elixir@sha256:b0e48cf28264779f59c92908805a096e73014ab7f0bcf3106c26f5911a4e69ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113295323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb7d079bcd0d8e6b3d2dc0706ed7e6b05ee9839ee2093266505aa3545a626c1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:19:36 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:30:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:30:53 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:37:56 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:38:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:38:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f257c06ce1d3bfffaf11ab367e9b52468c4e4fee80fa420968daa766e98395c9`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 63.8 MB (63754834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13595481106ceebdb9d4043c3f4bbe8a415e481f38a1fa99964ceb6f3432762`  
		Last Modified: Fri, 16 Nov 2018 22:40:19 GMT  
		Size: 4.3 MB (4335670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6`

```console
$ docker pull elixir@sha256:fd88cf008f671dcf40d9b018c6e434b68815471dc0ee04ade6ccc258b4c1f6dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6` - linux; amd64

```console
$ docker pull elixir@sha256:01b8f72552046d144dcf740fd5c3ab58d135058a1de5181a0b41c3b199402153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.8 MB (470825836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc08be8a91a2fe0918b8f00348c853a92e5bdf444470c57499994aa8fb17a9b`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:24:58 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 05:46:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:47:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 05:47:04 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 05:47:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 05:47:09 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:47:43 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 09:55:44 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:58:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 09:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3b3af904c5eb26954ac72e06c8c9a7d47c8af4a0d58a70d9cbfc64a410cc7`  
		Last Modified: Sat, 17 Nov 2018 07:35:44 GMT  
		Size: 137.1 MB (137113508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072a1f8e6987b54fe7949a96358ba6bddd529d7af5a4a280ffbd7077083f206`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 202.0 KB (201992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d0b54475da512d8eb1bb7183eb1f71192545d7ed8dcda423b6c1fff1000e1a`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 3.8 MB (3812968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1585e5f0d8fae9897f30eb2fc6b18cb3fe7d8afee2678bdd1e548efa70c362b8`  
		Last Modified: Sat, 17 Nov 2018 10:17:24 GMT  
		Size: 6.0 MB (6019869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; arm variant v7

```console
$ docker pull elixir@sha256:19a0f17c04525df7390c75c69fe7cd57644598f684c2287ba74615863a1cf483
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.7 MB (435725727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88eb2225a81ee5248625404659f483c87df060ca8904f2582e6a58de26bad6da`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:57:48 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:08:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:08:10 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:08:10 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:08:16 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:08:21 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:09:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 20:52:29 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:53:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 20:53:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9faa979a0a4d6083a2f283a213e9722b82d2ab5beacbc1cc3e114518381ba65b`  
		Last Modified: Fri, 16 Nov 2018 13:43:37 GMT  
		Size: 129.9 MB (129899058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14a629d20ffbc08552e843b184264216b6442bdc63163a3fdbf21b554f38106`  
		Last Modified: Fri, 16 Nov 2018 13:43:15 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e323c4a36dc81a5fc95787ea24b0386c2d408c3da81bceb56caa624ce2328ef6`  
		Last Modified: Fri, 16 Nov 2018 13:43:14 GMT  
		Size: 3.8 MB (3810097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e77546057ecff78ecb0b92560ddd57872923241f2f27a9d0d91473bb81`  
		Last Modified: Fri, 16 Nov 2018 21:00:01 GMT  
		Size: 6.0 MB (6017011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:0cecfa0d91c31046392b9f826d715f5840f42945b2bcac8042f4dc7c7547af1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.9 MB (448854021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350ea5485483c513eaf013f16ed75074ab863627f088657d70447d6ed7615d7`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:11:02 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:27:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:27:33 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 10:27:34 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 10:27:41 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 10:27:49 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 10:28:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 07:57:18 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:59:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 07:59:39 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ee3a658489003ce5f67894e1a734ec7f759f9f550c0009f082630655c1e62d`  
		Last Modified: Fri, 16 Nov 2018 11:08:11 GMT  
		Size: 133.3 MB (133290924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8882f4a74f6fd3e0e50bdf3b8d9bad9ca0bdf5d34113b7344f523fa2c7e62`  
		Last Modified: Fri, 16 Nov 2018 11:07:24 GMT  
		Size: 202.0 KB (202005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f47817ea436b5059b01290cd29f51164d0056c16058f31b2f2173b29f56738`  
		Last Modified: Fri, 16 Nov 2018 11:07:25 GMT  
		Size: 3.8 MB (3809898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340c4ac5fd99f1f3a51188fd473c3bd99ef519066e98b4a14aa8d19c7499db21`  
		Last Modified: Sat, 17 Nov 2018 08:08:07 GMT  
		Size: 6.0 MB (6020210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; 386

```console
$ docker pull elixir@sha256:a9c17b1ad4b4101dafe5f200b4aa297ff7e47d972345f0b994db1167a7d22807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475109699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599e615b19ccffe84484a74bbec4535088dabd1f253705e43ec3edc09dede4ad`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:33:02 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:43:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:43:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:43:18 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 06 Nov 2018 12:43:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 06 Nov 2018 12:43:21 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 06 Nov 2018 12:43:44 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 13:22:28 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:23:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 13:23:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a90598a913fd4c79f5ef54b22b5d6c4433233a8929a195d0bebb04f728bfc6`  
		Last Modified: Tue, 06 Nov 2018 13:04:27 GMT  
		Size: 133.9 MB (133914232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8e5b9699c561d8f4b47b9272adb4685203771ad8d36f81a7557b4dfd744db`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 202.0 KB (202011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75509d922f69d2a36604384bb057738238f0c8deb157d38df36da0db9be1ef8a`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 3.8 MB (3779434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82987240cdf0cdc3d2ba54893d5059ff2e2f08d4919d9afab472b92db80f392`  
		Last Modified: Tue, 06 Nov 2018 13:26:31 GMT  
		Size: 6.0 MB (6016682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; ppc64le

```console
$ docker pull elixir@sha256:ba3aa158dd810f5df41491e525e403faaec43a43be5b56b7332ac742f1727d26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 MB (463474692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dee11d18df32f956b61b34cbeecf149cc5d8d53c041b71bc5e7bf96f1638497`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:07 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:35:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:55 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:56 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:36:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:36:08 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:36:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 06:54:38 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:56:05 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 06:56:07 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3edc44c9a295027e68b0dcb15eb40892492e241b4999c5968998ecd729cfb3`  
		Last Modified: Fri, 16 Nov 2018 22:59:16 GMT  
		Size: 134.7 MB (134652898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcd6b369a408c09123a7f260f062c2181e520ac422fbed2e89d6daeb4864d5`  
		Last Modified: Fri, 16 Nov 2018 22:58:41 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c9200b4db39479825c13b59a083f4b7dda2b50a849874803ac3eba40a27131`  
		Last Modified: Fri, 16 Nov 2018 22:58:43 GMT  
		Size: 3.8 MB (3811816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08d062571dca60386e735ab9a195bb4f7ebf1b058b5a1c545e57b06b6414365`  
		Last Modified: Sat, 17 Nov 2018 07:03:19 GMT  
		Size: 6.0 MB (6020363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; s390x

```console
$ docker pull elixir@sha256:46b4a8b1e67858f00bf99546341f161ebe037f7907b14873406bf3ce90d68d5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.6 MB (463640647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56d56a8ce4237a565fa1edfc7875d248e9d6e7bb555367e6dcd708e11629d8e`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:37 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:18:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:18:30 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:18:31 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:18:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:18:43 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:19:23 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:33:48 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 22:35:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1208c63ecdc31d86d5d5f5068f424212caa65f2f252c2ecedcb95f234ac5ea17`  
		Last Modified: Fri, 16 Nov 2018 13:53:45 GMT  
		Size: 138.1 MB (138076053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fc536b5cde5a96d26d85ffeaf1b7ab499cb59f19eace8d7e57a8ee1ef4ea96`  
		Last Modified: Fri, 16 Nov 2018 13:53:04 GMT  
		Size: 202.0 KB (201980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257418a11368b102fd959809fab4bf961099064178137b69dcab0af7daa6c3c2`  
		Last Modified: Fri, 16 Nov 2018 13:53:05 GMT  
		Size: 3.8 MB (3810056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5af4ae071354f3ae5dba0ec4ac9a7618cbacdd96baa361465b650a77d32746`  
		Last Modified: Fri, 16 Nov 2018 22:39:35 GMT  
		Size: 6.0 MB (6019967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6`

```console
$ docker pull elixir@sha256:fd88cf008f671dcf40d9b018c6e434b68815471dc0ee04ade6ccc258b4c1f6dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6.6` - linux; amd64

```console
$ docker pull elixir@sha256:01b8f72552046d144dcf740fd5c3ab58d135058a1de5181a0b41c3b199402153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.8 MB (470825836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc08be8a91a2fe0918b8f00348c853a92e5bdf444470c57499994aa8fb17a9b`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:24:58 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 05:46:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:47:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 05:47:04 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 05:47:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 05:47:09 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:47:43 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 09:55:44 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:58:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 09:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3b3af904c5eb26954ac72e06c8c9a7d47c8af4a0d58a70d9cbfc64a410cc7`  
		Last Modified: Sat, 17 Nov 2018 07:35:44 GMT  
		Size: 137.1 MB (137113508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072a1f8e6987b54fe7949a96358ba6bddd529d7af5a4a280ffbd7077083f206`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 202.0 KB (201992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d0b54475da512d8eb1bb7183eb1f71192545d7ed8dcda423b6c1fff1000e1a`  
		Last Modified: Sat, 17 Nov 2018 07:35:28 GMT  
		Size: 3.8 MB (3812968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1585e5f0d8fae9897f30eb2fc6b18cb3fe7d8afee2678bdd1e548efa70c362b8`  
		Last Modified: Sat, 17 Nov 2018 10:17:24 GMT  
		Size: 6.0 MB (6019869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; arm variant v7

```console
$ docker pull elixir@sha256:19a0f17c04525df7390c75c69fe7cd57644598f684c2287ba74615863a1cf483
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.7 MB (435725727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88eb2225a81ee5248625404659f483c87df060ca8904f2582e6a58de26bad6da`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:57:48 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:08:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:08:10 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:08:10 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:08:16 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:08:21 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:09:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 20:52:29 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:53:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 20:53:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9faa979a0a4d6083a2f283a213e9722b82d2ab5beacbc1cc3e114518381ba65b`  
		Last Modified: Fri, 16 Nov 2018 13:43:37 GMT  
		Size: 129.9 MB (129899058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14a629d20ffbc08552e843b184264216b6442bdc63163a3fdbf21b554f38106`  
		Last Modified: Fri, 16 Nov 2018 13:43:15 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e323c4a36dc81a5fc95787ea24b0386c2d408c3da81bceb56caa624ce2328ef6`  
		Last Modified: Fri, 16 Nov 2018 13:43:14 GMT  
		Size: 3.8 MB (3810097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c038e77546057ecff78ecb0b92560ddd57872923241f2f27a9d0d91473bb81`  
		Last Modified: Fri, 16 Nov 2018 21:00:01 GMT  
		Size: 6.0 MB (6017011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:0cecfa0d91c31046392b9f826d715f5840f42945b2bcac8042f4dc7c7547af1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.9 MB (448854021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f350ea5485483c513eaf013f16ed75074ab863627f088657d70447d6ed7615d7`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:11:02 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:27:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:27:33 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 10:27:34 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 10:27:41 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 10:27:49 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 10:28:50 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 07:57:18 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 07:59:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 07:59:39 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ee3a658489003ce5f67894e1a734ec7f759f9f550c0009f082630655c1e62d`  
		Last Modified: Fri, 16 Nov 2018 11:08:11 GMT  
		Size: 133.3 MB (133290924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8882f4a74f6fd3e0e50bdf3b8d9bad9ca0bdf5d34113b7344f523fa2c7e62`  
		Last Modified: Fri, 16 Nov 2018 11:07:24 GMT  
		Size: 202.0 KB (202005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f47817ea436b5059b01290cd29f51164d0056c16058f31b2f2173b29f56738`  
		Last Modified: Fri, 16 Nov 2018 11:07:25 GMT  
		Size: 3.8 MB (3809898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340c4ac5fd99f1f3a51188fd473c3bd99ef519066e98b4a14aa8d19c7499db21`  
		Last Modified: Sat, 17 Nov 2018 08:08:07 GMT  
		Size: 6.0 MB (6020210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; 386

```console
$ docker pull elixir@sha256:a9c17b1ad4b4101dafe5f200b4aa297ff7e47d972345f0b994db1167a7d22807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475109699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:599e615b19ccffe84484a74bbec4535088dabd1f253705e43ec3edc09dede4ad`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:33:02 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:43:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:43:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:43:18 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 06 Nov 2018 12:43:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 06 Nov 2018 12:43:21 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 06 Nov 2018 12:43:44 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 13:22:28 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:23:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 13:23:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a90598a913fd4c79f5ef54b22b5d6c4433233a8929a195d0bebb04f728bfc6`  
		Last Modified: Tue, 06 Nov 2018 13:04:27 GMT  
		Size: 133.9 MB (133914232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b8e5b9699c561d8f4b47b9272adb4685203771ad8d36f81a7557b4dfd744db`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 202.0 KB (202011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75509d922f69d2a36604384bb057738238f0c8deb157d38df36da0db9be1ef8a`  
		Last Modified: Tue, 06 Nov 2018 13:04:10 GMT  
		Size: 3.8 MB (3779434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82987240cdf0cdc3d2ba54893d5059ff2e2f08d4919d9afab472b92db80f392`  
		Last Modified: Tue, 06 Nov 2018 13:26:31 GMT  
		Size: 6.0 MB (6016682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; ppc64le

```console
$ docker pull elixir@sha256:ba3aa158dd810f5df41491e525e403faaec43a43be5b56b7332ac742f1727d26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.5 MB (463474692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dee11d18df32f956b61b34cbeecf149cc5d8d53c041b71bc5e7bf96f1638497`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:07 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:35:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:55 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:56 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:36:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:36:08 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:36:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 06:54:38 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:56:05 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 06:56:07 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3edc44c9a295027e68b0dcb15eb40892492e241b4999c5968998ecd729cfb3`  
		Last Modified: Fri, 16 Nov 2018 22:59:16 GMT  
		Size: 134.7 MB (134652898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bcd6b369a408c09123a7f260f062c2181e520ac422fbed2e89d6daeb4864d5`  
		Last Modified: Fri, 16 Nov 2018 22:58:41 GMT  
		Size: 202.0 KB (201988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c9200b4db39479825c13b59a083f4b7dda2b50a849874803ac3eba40a27131`  
		Last Modified: Fri, 16 Nov 2018 22:58:43 GMT  
		Size: 3.8 MB (3811816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08d062571dca60386e735ab9a195bb4f7ebf1b058b5a1c545e57b06b6414365`  
		Last Modified: Sat, 17 Nov 2018 07:03:19 GMT  
		Size: 6.0 MB (6020363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; s390x

```console
$ docker pull elixir@sha256:46b4a8b1e67858f00bf99546341f161ebe037f7907b14873406bf3ce90d68d5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.6 MB (463640647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56d56a8ce4237a565fa1edfc7875d248e9d6e7bb555367e6dcd708e11629d8e`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:37 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:18:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:18:30 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 13:18:31 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 13:18:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 13:18:43 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:19:23 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:33:48 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 22:35:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1208c63ecdc31d86d5d5f5068f424212caa65f2f252c2ecedcb95f234ac5ea17`  
		Last Modified: Fri, 16 Nov 2018 13:53:45 GMT  
		Size: 138.1 MB (138076053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fc536b5cde5a96d26d85ffeaf1b7ab499cb59f19eace8d7e57a8ee1ef4ea96`  
		Last Modified: Fri, 16 Nov 2018 13:53:04 GMT  
		Size: 202.0 KB (201980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257418a11368b102fd959809fab4bf961099064178137b69dcab0af7daa6c3c2`  
		Last Modified: Fri, 16 Nov 2018 13:53:05 GMT  
		Size: 3.8 MB (3810056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5af4ae071354f3ae5dba0ec4ac9a7618cbacdd96baa361465b650a77d32746`  
		Last Modified: Fri, 16 Nov 2018 22:39:35 GMT  
		Size: 6.0 MB (6019967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-alpine`

```console
$ docker pull elixir@sha256:e012b9063251586f4d0bcf744c3432c79c00c35cb7f6ebdf662c3748ad14a9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6.6-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:8c8b94e3c006eec737a6dd3cd002505d5e10350f660a676a19f09e37f5e4c2f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56458086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558b01f7b10001837bd5fb665238f6dbb3a2f1ca84fe002b177d869795a4b0c2`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 06:10:21 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:10:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:28:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 06:28:30 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:00:32 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:00:35 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 10:00:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29b17d7d3f88ca48cb5f1f13cbd023fe864b5676859a02a5f366a67b5934bb`  
		Last Modified: Sat, 17 Nov 2018 07:38:10 GMT  
		Size: 49.3 MB (49342347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a25b0cc92133e2312fba62b38473e3fd9080cc32fc0a16988edbf08eefcd057`  
		Last Modified: Sat, 17 Nov 2018 10:19:12 GMT  
		Size: 4.9 MB (4908808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:0cb6b415d31365cd28b55f2835749efcb3b88e59c2233bcf268fc5d91876f64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53046409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4a6a0a84eb032d45407d994416f81350650970a90960c88de2455d23649300`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 10:45:04 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:45:05 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 11:01:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 11:01:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:01:49 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:01:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 08:01:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a30fd8906c376ac7be25bc3c8754fe9e76c805f843e109b6a3fd5870907b94`  
		Last Modified: Fri, 16 Nov 2018 11:12:03 GMT  
		Size: 46.0 MB (46037797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db66f5927ac1f479e2ab8d97f9816da0e08bdb82de3bf426786d279c7c9e2a43`  
		Last Modified: Sat, 17 Nov 2018 08:09:30 GMT  
		Size: 4.9 MB (4908674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; 386

```console
$ docker pull elixir@sha256:9c4ee694d35e90cb0ed38238bf6a9b3c04e2c28ce3ae4b852a00ccb519050cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52537966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3256a50bb4b42b6d60425131971c3c5b55dbf2143fcb352e260a9f9c70e56b`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Tue, 06 Nov 2018 12:53:01 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 13:03:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 06 Nov 2018 13:03:24 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:24:10 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:24:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 06 Nov 2018 13:24:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299202ee132af25f65c4e439198ec33013f003027ab927174448c4abadaec21`  
		Last Modified: Tue, 06 Nov 2018 13:06:20 GMT  
		Size: 45.4 MB (45357608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753ee0a6d915d7088eee7080c4ae1a95db9d76587fc7f88bb7aa9dde91aa79d`  
		Last Modified: Tue, 06 Nov 2018 13:27:18 GMT  
		Size: 4.9 MB (4908723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:5076911c9d10e20959bc5b7c8dc527f0364ed7f47d091427184e520e8f2b8db5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53510419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f64a42cfafb8deaf16723a392693c200b94cbaf5646d867e7d098b8233a8a`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:45:51 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:52 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:52:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:52:55 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:58:05 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:58:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 06:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0fb3657f89c6671ee021ac27c2b9060be961bb94f660c8aa2423c133502365`  
		Last Modified: Fri, 16 Nov 2018 23:01:36 GMT  
		Size: 46.4 MB (46405646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc887629fac23319f50695ace0e2095882e10e41736adebff2c5c48c7999a20d`  
		Last Modified: Sat, 17 Nov 2018 07:06:56 GMT  
		Size: 4.9 MB (4909370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:441099e93d8524bf44439f5253914c9e904701a37e6f531e14c127943028564f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53611444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a497031fbb2aaa36ac6e37863e5390c5c41e6ad9a5a153f8a4dfa071b0636a05`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:31:11 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:31:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:48:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 13:48:02 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:48 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 16 Nov 2018 22:35:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e55a9c60d42b90cbffa63fd3b1391322585b73f0b4494ad2768bef8b1b728c`  
		Last Modified: Fri, 16 Nov 2018 13:55:34 GMT  
		Size: 46.4 MB (46394864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d514eba8fdff51920e68a4e6d1cece73de1c388875382d1f2a7eeabdbdcc2c1`  
		Last Modified: Fri, 16 Nov 2018 22:39:57 GMT  
		Size: 4.9 MB (4908658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-otp-21`

```console
$ docker pull elixir@sha256:4284897673e02455920d738d6ce18dfa761dd1b09c7d36415f063bc02f87eef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6.6-otp-21` - linux; amd64

```console
$ docker pull elixir@sha256:e75b39523279c6bc26f4bbb59e961f80d28f7626fdf15f680c3e235e65e2c107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.2 MB (467186994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a4b6313fd163a6fe501936804e7d0fcaa66c3f03fa23d99fb0c8a660518af2`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:29:32 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 04:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:48:01 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 04:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 04:48:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 04:48:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 04:48:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:01:50 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:03:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 10:03:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fac97c797992467f16e936ef8a51ce174628486ec444e5f819310ac765111`  
		Last Modified: Sat, 17 Nov 2018 07:31:11 GMT  
		Size: 133.5 MB (133479863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a9e4bdadfc2c026aa57c7fdb06f6281cbe8eed77c3805d364b9078530f835`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 201.4 KB (201437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f819e071adef5423d7c42a812dbe2b02b55c1a447976fda53ade46cee601e8c3`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 3.8 MB (3809385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95dda59dacc57760204f42970b63ad7e80cf5ed5143de1b95b510151eaaef91`  
		Last Modified: Sat, 17 Nov 2018 10:20:05 GMT  
		Size: 6.0 MB (6018810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21` - linux; arm variant v7

```console
$ docker pull elixir@sha256:cbc62cdafedee484c3ea1cddc31b4461c44c6841054b91f87fe6ce8e653552c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431915670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132574d7f627346fcdd1bce25a1d243ae8d4d21c69448f4cdad89d8dc14b9637`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:57:40 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:07:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:07:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:07:35 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:07:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:07:41 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:08:24 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:15:09 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:16:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 13:16:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac678e8be21a25ee86d32b8261f2db6ba17f7a948c679fd40df27d0760e47f2a`  
		Last Modified: Sat, 20 Oct 2018 12:51:09 GMT  
		Size: 126.2 MB (126184285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51544b067220705949a501273d2dd929ca7f1aac47180702a29563e8a54b38`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e2f674148c662be477ce14936b1d0d811cc14e8380288c638c7b9d0d6bfba`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 3.7 MB (3716886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef278ea8f7977555dc3af6f86f766dc8db0b237a709d0828fd720e928df082`  
		Last Modified: Tue, 30 Oct 2018 12:37:12 GMT  
		Size: 6.0 MB (6015487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:694f064203da7c1436a264113ce87c7c79786e0c1d850a296e0f7b2c4c05e3f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.0 MB (445041857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cad823181a8913718548d318cacf02673a9e312a77d2e524bff79a6b6312ec`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:40:32 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 08:57:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:57:58 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 08:57:59 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 08:58:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 08:58:16 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 08:59:20 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 10:33:23 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 10:35:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 10:35:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0b669d7e8bf17b79830b652a2fab0a08641acccc14b3bd5bddd9c859c63006`  
		Last Modified: Sat, 20 Oct 2018 10:04:03 GMT  
		Size: 129.6 MB (129573198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de04b535adaf6305347b0130f410f31dcb3839c4dab20d14563b1fac4d99713`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 201.4 KB (201444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d535ef3458277cdae816ee5e2429c38f237cd354ec7a23c9c710ec3a517476`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 3.7 MB (3717137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5894c27dd032713a20fd66bf5786cb5b6cbb5dfafe50d29ed186046cf9e02a0`  
		Last Modified: Sat, 20 Oct 2018 10:43:34 GMT  
		Size: 6.0 MB (6019094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21` - linux; 386

```console
$ docker pull elixir@sha256:723f8c081c7721e35099ed56e6af4a03a7cb8fc4a051d764b0732323ce79c658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471377222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f73958da1dea60100143388c32809d975e3a2491d0ec83aec5f01c1a9834c9`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:38:46 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:49:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:49:16 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:49:16 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 10:49:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 10:49:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 10:49:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:02:27 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:03:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 13:03:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d2603749bc06ea60f4aa103b525d502a148b9bcfa5c8d4dcb237adb12e2f4`  
		Last Modified: Sat, 20 Oct 2018 12:07:02 GMT  
		Size: 130.2 MB (130246046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a7aa3e3c913c18e67e694de46280ed09afcc8295946f426e0c85970dcd6bca`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9491a28182f93c8fc49081c60cb7b5eeb0961d744d0f988b8bb5fbc388f8c`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3f02a369c14c39795435fb90e5423dd711f5ed5337cdc0f69729a5846d0cdb`  
		Last Modified: Sat, 20 Oct 2018 13:09:46 GMT  
		Size: 6.0 MB (6015559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21` - linux; ppc64le

```console
$ docker pull elixir@sha256:bb87da738c9f898123dea955ceb8b781365d57d3d3de8032ebd4c8520150c80b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459754824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d92b6298dc67cf354538f94fd5d7ce988788306cabb7876c6b2f201e87a563b`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:57:28 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:07:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:27 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:07:29 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:07:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:07:38 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:08:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 23:08:55 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:10:25 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 23:10:27 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f2b6cbc01a30c9c3dd6fc3e9cf1e8caf4ecda24bd77d72dfcff02eecd1fe70`  
		Last Modified: Fri, 16 Nov 2018 22:54:04 GMT  
		Size: 130.9 MB (130938846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6096568fffcd057dca37182aacb9b6aab3ec3388925c93cfd2d7bb423a4773`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 201.4 KB (201449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd58108b46578349b359261bc2c83c3d913c499a60d19321d46017727ab2955`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 3.8 MB (3807868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0912ac087f86d7fa31325599b1928946885a08396a1a1de78ed8b59a27e934c`  
		Last Modified: Fri, 16 Nov 2018 23:18:11 GMT  
		Size: 6.0 MB (6019034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21` - linux; s390x

```console
$ docker pull elixir@sha256:39dbe93db0f30479451f57626afc366d1849fb4674deb347d93bd9785960beeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459784618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6867a11eeba0948f140ced93d890e2a279f1c697a26df9c3b558131e1538ec8b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:41:31 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:52:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:52:02 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:52:02 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:52:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:52:06 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:52:36 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 12:51:43 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 12:52:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 12:52:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350fd435c2b268e1ed976d8793b3f85e629921751705966931f35f82629650d5`  
		Last Modified: Sat, 20 Oct 2018 12:30:22 GMT  
		Size: 134.3 MB (134314830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82703221227a71f3769e97f847d0a1edf0b707e13bce1039508387e3158480`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 201.4 KB (201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044901042e9ce6e219d3fce43c4151053709f94095a4b3e37c284599081c66ea`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7024463424597c0dd1c988ea3d82ad1fda09ba5b3a5b418e6979d7aef31cea`  
		Last Modified: Sat, 20 Oct 2018 12:55:42 GMT  
		Size: 6.0 MB (6018923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-otp-21-alpine`

```console
$ docker pull elixir@sha256:f9813ba789c971f5b78d70569d9ef9ae38778bd68f324e1c61c4db2719c4a2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6.6-otp-21-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:4821570d3284cc6c515a37b7faa6309f1e8d1ffe291ccff7b49b8408aa157ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54465295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40aa6600c73be4883503f4191de9b3f525ee4b317a1f89b6677092c31fa21aeb`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 05:07:27 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:07:27 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:24:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 05:24:14 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:04:59 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:05:05 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 17 Nov 2018 10:05:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03095f56e8734932faabe3cccf80750cbb06e2070caceb91a6fcb1fdcea0035`  
		Last Modified: Sat, 17 Nov 2018 07:34:00 GMT  
		Size: 46.2 MB (46238818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca85660fe22f117c7be390d3d10139ddc336bc46086ee11c0e6023d1b0db69b`  
		Last Modified: Sat, 17 Nov 2018 10:20:55 GMT  
		Size: 6.0 MB (6019546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:f304e458163142ff0a4980895421cdd383905b75e484222ce93ccd5352d6d90d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47223010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5859ad418c48905f7cad3538b3e71e17a53e6105d26374c6413c163d6b319c0b`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 09:11:14 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:21:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 09:21:14 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:35:28 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 10:35:35 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 10:35:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97de03116d599725a9508e73bcf7f375bf59bc40f336d61b5d12691ed17edbe`  
		Last Modified: Sat, 20 Oct 2018 10:06:17 GMT  
		Size: 39.1 MB (39105624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50cf24407110f88c795c74d8d98c367763a918e22221091e84ef8037e125483`  
		Last Modified: Sat, 20 Oct 2018 10:44:02 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21-alpine` - linux; 386

```console
$ docker pull elixir@sha256:c194672d1883f80242917672054b874da1128b29f2ae01aeb069f85e6d831568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50497877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1957ad22b1dec45f762e0907c6a0a56f9399f69239a3ff47ff0e1acba933a3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 10:59:07 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:09:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 11:09:31 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 13:03:25 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:03:29 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 13:03:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c1f16d134bab23f32ddab5d0ceb0ef335bbdde643a594db12965e0ec0a21e`  
		Last Modified: Sat, 20 Oct 2018 12:08:40 GMT  
		Size: 42.2 MB (42208796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b878d88ce93f331fb422208270db2e5072e83151b249ea739aca9afc4cc68`  
		Last Modified: Sat, 20 Oct 2018 13:10:07 GMT  
		Size: 6.0 MB (6017446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:e32ba3e881e9d556ecea7076e84ff959003acc1f382fee6e49725588166193b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51494433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f485b0158b5774611e9a23f72e85955333edce322c5b3548c67ece1d27109f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:17:57 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:58 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:25:10 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:58:42 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:58:51 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 17 Nov 2018 06:58:53 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca335385668083eb7bb73aa2f629fa449a0884da94dbff320902dd9f56f30e`  
		Last Modified: Fri, 16 Nov 2018 22:57:12 GMT  
		Size: 43.3 MB (43279548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576883f702cea4c2d7e4e5ce58b7d79fcc0bc730ebe6d3613e98b083701b1c38`  
		Last Modified: Sat, 17 Nov 2018 07:07:32 GMT  
		Size: 6.0 MB (6019482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-otp-21-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:83f7bddc224bb58ac66ea2328634242b3318fbd20d1e75af15f791ec4b2bbaf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47787586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a92f522620713d14481154dc18509acfc7536d726da06f423406bda944307b0`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 11:59:55 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:06:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 12:06:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:52:37 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 12:52:41 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 12:52:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e2644a2850abc5c661d3ba9a21bef7ef5e41d65306e1ebe1a7d718ca9ea15`  
		Last Modified: Sat, 20 Oct 2018 12:31:06 GMT  
		Size: 39.5 MB (39462247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33615c8f4cd454eb74654dfd41ccf3a8c107bba0a13637e2d50770912bae574b`  
		Last Modified: Sat, 20 Oct 2018 12:55:50 GMT  
		Size: 6.0 MB (6017417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-slim`

```console
$ docker pull elixir@sha256:0a9b70129a7ee93835cfd69db31a9df37e94069d55e93716773631af90358280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6.6-slim` - linux; amd64

```console
$ docker pull elixir@sha256:20ba4c420e3e432eeb3b1d21183b67e518be64788950d878ec321715f366f3dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115768594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71476428cb9e2ae29f80cac26a5f34a6563e24a97f136361facb65b5c63de135`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:48:04 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:09:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:09:37 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:59:35 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:59:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:00:00 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08eb9d09eaeb47d6b8ab0b1ce6b3d811fc3e2607f707c944504286cdcb4e273`  
		Last Modified: Sat, 17 Nov 2018 07:37:03 GMT  
		Size: 65.1 MB (65120611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc65629e246d6df483e8d578940595f1f5586a57673855ab4764df677e14da1`  
		Last Modified: Sat, 17 Nov 2018 10:18:22 GMT  
		Size: 5.3 MB (5327726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:917a100f74bd8e72592c30e01dbfaa3f081629e357e751bee08ff00da56e9b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107495632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0035215ac8b7ac3d34f458292dba0760974d9ed8f72152ba0f1d226f032f71b7`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:28 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:17:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:17:07 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:54:15 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:54:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:54:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bfc7b19ddb3b550923f890d0aff1bf3a05128607b38895bbd56d319043f7e`  
		Last Modified: Fri, 16 Nov 2018 13:44:30 GMT  
		Size: 60.1 MB (60092171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825afd19a1cd239deaab10e299af5b5a863990c870e3a3a81e0952f8fc54a4d`  
		Last Modified: Fri, 16 Nov 2018 21:00:43 GMT  
		Size: 5.3 MB (5327321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:e9ea17737c740e2dee39ddd99ae281dcd490cc0dbab0979ff4b3ee29c710adb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109724997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e526d98291755edaa437eb29a611cafabc23efa545497c267526936f74c576`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:29:35 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:44:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:44:21 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:00:04 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:01:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 08:01:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f2bff52e1b665667858e9ecdbf82f7c2d7514231a51c3ece2618a040889db6`  
		Last Modified: Fri, 16 Nov 2018 11:10:11 GMT  
		Size: 61.3 MB (61280637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5309e8c0a3f6cf83ebf14ca0416a246cc0d43cffe393858fc5c4a7bb3346d955`  
		Last Modified: Sat, 17 Nov 2018 08:08:48 GMT  
		Size: 5.3 MB (5327660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; 386

```console
$ docker pull elixir@sha256:0e659dadcd9929977023f675fa3beea3a7ae16747eb24b854a6e1c4c3917a3ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119504573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a597e607fc2edff37c3c2c8baa2f31b6e96c3863bd660d0e6eb6c62f7a173d37`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 06 Nov 2018 12:44:03 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:52:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:52:42 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:23:40 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:23:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:23:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e56ffe2c975ceda5d1f3af9da6f125ab53b7887c1ca06f167be0aeb8de8cb7`  
		Last Modified: Tue, 06 Nov 2018 13:05:27 GMT  
		Size: 68.1 MB (68137791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279f8528754891a0ebbe61ce7c21249ca357f7b132deee291219a550e3c16101`  
		Last Modified: Tue, 06 Nov 2018 13:26:54 GMT  
		Size: 5.3 MB (5327560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:3278ed636864a29a76e86ba23a38303a0347a630fa479804a4ec777559b2924d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113105028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a87b43aa9a7896705b56c5cba07753f9977af891d31c578b1d527010210012`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:37:17 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:45:28 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:56:29 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:57:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:57:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677d367798192852266b47dac3e4913f66748e51b374b9083199e4d0aa13a6`  
		Last Modified: Fri, 16 Nov 2018 23:00:36 GMT  
		Size: 62.2 MB (62171013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ef85e0b4ef8e2b01576db7d937d22113b4d3fe0be75f0d09fe391917bf3c2f`  
		Last Modified: Sat, 17 Nov 2018 07:06:22 GMT  
		Size: 5.3 MB (5327937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; s390x

```console
$ docker pull elixir@sha256:df6d4d9cbd377e736d9d777e83f70cc1a5fedc51282c540d6ae03572b1e762e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114286735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7f5cf75fdbe55492608f3633f510637a60e69809bc4fc5abb080adddd43e96`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:19:36 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:30:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:30:53 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:22 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f257c06ce1d3bfffaf11ab367e9b52468c4e4fee80fa420968daa766e98395c9`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 63.8 MB (63754834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b54068a712c1cea1f1e64374dec799925123f3e29f5957e6016c6650bb7d94`  
		Last Modified: Fri, 16 Nov 2018 22:39:46 GMT  
		Size: 5.3 MB (5327082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-alpine`

```console
$ docker pull elixir@sha256:e012b9063251586f4d0bcf744c3432c79c00c35cb7f6ebdf662c3748ad14a9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:8c8b94e3c006eec737a6dd3cd002505d5e10350f660a676a19f09e37f5e4c2f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56458086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558b01f7b10001837bd5fb665238f6dbb3a2f1ca84fe002b177d869795a4b0c2`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 06:10:21 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:10:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 06:28:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 06:28:30 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:00:32 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:00:35 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 10:00:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29b17d7d3f88ca48cb5f1f13cbd023fe864b5676859a02a5f366a67b5934bb`  
		Last Modified: Sat, 17 Nov 2018 07:38:10 GMT  
		Size: 49.3 MB (49342347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a25b0cc92133e2312fba62b38473e3fd9080cc32fc0a16988edbf08eefcd057`  
		Last Modified: Sat, 17 Nov 2018 10:19:12 GMT  
		Size: 4.9 MB (4908808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:0cb6b415d31365cd28b55f2835749efcb3b88e59c2233bcf268fc5d91876f64a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53046409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4a6a0a84eb032d45407d994416f81350650970a90960c88de2455d23649300`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 10:45:04 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:45:05 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 11:01:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 11:01:04 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:01:49 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:01:55 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 08:01:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a30fd8906c376ac7be25bc3c8754fe9e76c805f843e109b6a3fd5870907b94`  
		Last Modified: Fri, 16 Nov 2018 11:12:03 GMT  
		Size: 46.0 MB (46037797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db66f5927ac1f479e2ab8d97f9816da0e08bdb82de3bf426786d279c7c9e2a43`  
		Last Modified: Sat, 17 Nov 2018 08:09:30 GMT  
		Size: 4.9 MB (4908674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; 386

```console
$ docker pull elixir@sha256:9c4ee694d35e90cb0ed38238bf6a9b3c04e2c28ce3ae4b852a00ccb519050cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52537966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3256a50bb4b42b6d60425131971c3c5b55dbf2143fcb352e260a9f9c70e56b`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Tue, 06 Nov 2018 12:53:01 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 13:03:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 06 Nov 2018 13:03:24 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:24:10 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:24:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 06 Nov 2018 13:24:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2299202ee132af25f65c4e439198ec33013f003027ab927174448c4abadaec21`  
		Last Modified: Tue, 06 Nov 2018 13:06:20 GMT  
		Size: 45.4 MB (45357608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753ee0a6d915d7088eee7080c4ae1a95db9d76587fc7f88bb7aa9dde91aa79d`  
		Last Modified: Tue, 06 Nov 2018 13:27:18 GMT  
		Size: 4.9 MB (4908723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:5076911c9d10e20959bc5b7c8dc527f0364ed7f47d091427184e520e8f2b8db5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53510419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f64a42cfafb8deaf16723a392693c200b94cbaf5646d867e7d098b8233a8a`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:45:51 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:52 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:52:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:52:55 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:58:05 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:58:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Sat, 17 Nov 2018 06:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0fb3657f89c6671ee021ac27c2b9060be961bb94f660c8aa2423c133502365`  
		Last Modified: Fri, 16 Nov 2018 23:01:36 GMT  
		Size: 46.4 MB (46405646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc887629fac23319f50695ace0e2095882e10e41736adebff2c5c48c7999a20d`  
		Last Modified: Sat, 17 Nov 2018 07:06:56 GMT  
		Size: 4.9 MB (4909370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:441099e93d8524bf44439f5253914c9e904701a37e6f531e14c127943028564f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53611444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a497031fbb2aaa36ac6e37863e5390c5c41e6ad9a5a153f8a4dfa071b0636a05`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:31:11 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:31:11 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 13:48:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 13:48:02 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:48 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 16 Nov 2018 22:35:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e55a9c60d42b90cbffa63fd3b1391322585b73f0b4494ad2768bef8b1b728c`  
		Last Modified: Fri, 16 Nov 2018 13:55:34 GMT  
		Size: 46.4 MB (46394864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d514eba8fdff51920e68a4e6d1cece73de1c388875382d1f2a7eeabdbdcc2c1`  
		Last Modified: Fri, 16 Nov 2018 22:39:57 GMT  
		Size: 4.9 MB (4908658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-otp-21`

```console
$ docker pull elixir@sha256:4284897673e02455920d738d6ce18dfa761dd1b09c7d36415f063bc02f87eef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6-otp-21` - linux; amd64

```console
$ docker pull elixir@sha256:e75b39523279c6bc26f4bbb59e961f80d28f7626fdf15f680c3e235e65e2c107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.2 MB (467186994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a4b6313fd163a6fe501936804e7d0fcaa66c3f03fa23d99fb0c8a660518af2`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:29:32 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 04:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:48:01 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 04:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 04:48:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 04:48:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 04:48:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 10:01:50 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:03:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 10:03:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fac97c797992467f16e936ef8a51ce174628486ec444e5f819310ac765111`  
		Last Modified: Sat, 17 Nov 2018 07:31:11 GMT  
		Size: 133.5 MB (133479863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a9e4bdadfc2c026aa57c7fdb06f6281cbe8eed77c3805d364b9078530f835`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 201.4 KB (201437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f819e071adef5423d7c42a812dbe2b02b55c1a447976fda53ade46cee601e8c3`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 3.8 MB (3809385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95dda59dacc57760204f42970b63ad7e80cf5ed5143de1b95b510151eaaef91`  
		Last Modified: Sat, 17 Nov 2018 10:20:05 GMT  
		Size: 6.0 MB (6018810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21` - linux; arm variant v7

```console
$ docker pull elixir@sha256:cbc62cdafedee484c3ea1cddc31b4461c44c6841054b91f87fe6ce8e653552c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431915670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132574d7f627346fcdd1bce25a1d243ae8d4d21c69448f4cdad89d8dc14b9637`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:57:40 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:07:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:07:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:07:35 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:07:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:07:41 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:08:24 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:15:09 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:16:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 13:16:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac678e8be21a25ee86d32b8261f2db6ba17f7a948c679fd40df27d0760e47f2a`  
		Last Modified: Sat, 20 Oct 2018 12:51:09 GMT  
		Size: 126.2 MB (126184285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51544b067220705949a501273d2dd929ca7f1aac47180702a29563e8a54b38`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e2f674148c662be477ce14936b1d0d811cc14e8380288c638c7b9d0d6bfba`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 3.7 MB (3716886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef278ea8f7977555dc3af6f86f766dc8db0b237a709d0828fd720e928df082`  
		Last Modified: Tue, 30 Oct 2018 12:37:12 GMT  
		Size: 6.0 MB (6015487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:694f064203da7c1436a264113ce87c7c79786e0c1d850a296e0f7b2c4c05e3f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.0 MB (445041857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cad823181a8913718548d318cacf02673a9e312a77d2e524bff79a6b6312ec`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:40:32 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 08:57:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:57:58 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 08:57:59 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 08:58:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 08:58:16 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 08:59:20 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 10:33:23 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 10:35:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 10:35:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0b669d7e8bf17b79830b652a2fab0a08641acccc14b3bd5bddd9c859c63006`  
		Last Modified: Sat, 20 Oct 2018 10:04:03 GMT  
		Size: 129.6 MB (129573198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de04b535adaf6305347b0130f410f31dcb3839c4dab20d14563b1fac4d99713`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 201.4 KB (201444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d535ef3458277cdae816ee5e2429c38f237cd354ec7a23c9c710ec3a517476`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 3.7 MB (3717137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5894c27dd032713a20fd66bf5786cb5b6cbb5dfafe50d29ed186046cf9e02a0`  
		Last Modified: Sat, 20 Oct 2018 10:43:34 GMT  
		Size: 6.0 MB (6019094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21` - linux; 386

```console
$ docker pull elixir@sha256:723f8c081c7721e35099ed56e6af4a03a7cb8fc4a051d764b0732323ce79c658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.4 MB (471377222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f73958da1dea60100143388c32809d975e3a2491d0ec83aec5f01c1a9834c9`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:38:46 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:49:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:49:16 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:49:16 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 10:49:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 10:49:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 10:49:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 13:02:27 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:03:15 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 13:03:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d2603749bc06ea60f4aa103b525d502a148b9bcfa5c8d4dcb237adb12e2f4`  
		Last Modified: Sat, 20 Oct 2018 12:07:02 GMT  
		Size: 130.2 MB (130246046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a7aa3e3c913c18e67e694de46280ed09afcc8295946f426e0c85970dcd6bca`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9491a28182f93c8fc49081c60cb7b5eeb0961d744d0f988b8bb5fbc388f8c`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3f02a369c14c39795435fb90e5423dd711f5ed5337cdc0f69729a5846d0cdb`  
		Last Modified: Sat, 20 Oct 2018 13:09:46 GMT  
		Size: 6.0 MB (6015559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21` - linux; ppc64le

```console
$ docker pull elixir@sha256:bb87da738c9f898123dea955ceb8b781365d57d3d3de8032ebd4c8520150c80b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459754824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d92b6298dc67cf354538f94fd5d7ce988788306cabb7876c6b2f201e87a563b`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:57:28 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:07:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:27 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:07:29 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:07:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:07:38 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:08:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 23:08:55 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:10:25 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 23:10:27 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f2b6cbc01a30c9c3dd6fc3e9cf1e8caf4ecda24bd77d72dfcff02eecd1fe70`  
		Last Modified: Fri, 16 Nov 2018 22:54:04 GMT  
		Size: 130.9 MB (130938846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6096568fffcd057dca37182aacb9b6aab3ec3388925c93cfd2d7bb423a4773`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 201.4 KB (201449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd58108b46578349b359261bc2c83c3d913c499a60d19321d46017727ab2955`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 3.8 MB (3807868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0912ac087f86d7fa31325599b1928946885a08396a1a1de78ed8b59a27e934c`  
		Last Modified: Fri, 16 Nov 2018 23:18:11 GMT  
		Size: 6.0 MB (6019034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21` - linux; s390x

```console
$ docker pull elixir@sha256:39dbe93db0f30479451f57626afc366d1849fb4674deb347d93bd9785960beeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.8 MB (459784618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6867a11eeba0948f140ced93d890e2a279f1c697a26df9c3b558131e1538ec8b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:41:31 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:52:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:52:02 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:52:02 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:52:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:52:06 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:52:36 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 20 Oct 2018 12:51:43 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 12:52:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 20 Oct 2018 12:52:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350fd435c2b268e1ed976d8793b3f85e629921751705966931f35f82629650d5`  
		Last Modified: Sat, 20 Oct 2018 12:30:22 GMT  
		Size: 134.3 MB (134314830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82703221227a71f3769e97f847d0a1edf0b707e13bce1039508387e3158480`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 201.4 KB (201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044901042e9ce6e219d3fce43c4151053709f94095a4b3e37c284599081c66ea`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7024463424597c0dd1c988ea3d82ad1fda09ba5b3a5b418e6979d7aef31cea`  
		Last Modified: Sat, 20 Oct 2018 12:55:42 GMT  
		Size: 6.0 MB (6018923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-otp-21-alpine`

```console
$ docker pull elixir@sha256:f9813ba789c971f5b78d70569d9ef9ae38778bd68f324e1c61c4db2719c4a2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6-otp-21-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:4821570d3284cc6c515a37b7faa6309f1e8d1ffe291ccff7b49b8408aa157ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54465295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40aa6600c73be4883503f4191de9b3f525ee4b317a1f89b6677092c31fa21aeb`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 05:07:27 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:07:27 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:24:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 05:24:14 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 10:04:59 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 10:05:05 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 17 Nov 2018 10:05:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03095f56e8734932faabe3cccf80750cbb06e2070caceb91a6fcb1fdcea0035`  
		Last Modified: Sat, 17 Nov 2018 07:34:00 GMT  
		Size: 46.2 MB (46238818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca85660fe22f117c7be390d3d10139ddc336bc46086ee11c0e6023d1b0db69b`  
		Last Modified: Sat, 17 Nov 2018 10:20:55 GMT  
		Size: 6.0 MB (6019546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:f304e458163142ff0a4980895421cdd383905b75e484222ce93ccd5352d6d90d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47223010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5859ad418c48905f7cad3538b3e71e17a53e6105d26374c6413c163d6b319c0b`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 09:11:14 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:21:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 09:21:14 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:35:28 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 10:35:35 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 10:35:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97de03116d599725a9508e73bcf7f375bf59bc40f336d61b5d12691ed17edbe`  
		Last Modified: Sat, 20 Oct 2018 10:06:17 GMT  
		Size: 39.1 MB (39105624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50cf24407110f88c795c74d8d98c367763a918e22221091e84ef8037e125483`  
		Last Modified: Sat, 20 Oct 2018 10:44:02 GMT  
		Size: 6.0 MB (6017448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21-alpine` - linux; 386

```console
$ docker pull elixir@sha256:c194672d1883f80242917672054b874da1128b29f2ae01aeb069f85e6d831568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50497877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1957ad22b1dec45f762e0907c6a0a56f9399f69239a3ff47ff0e1acba933a3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 10:59:07 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:09:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 11:09:31 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 13:03:25 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 13:03:29 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 13:03:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c1f16d134bab23f32ddab5d0ceb0ef335bbdde643a594db12965e0ec0a21e`  
		Last Modified: Sat, 20 Oct 2018 12:08:40 GMT  
		Size: 42.2 MB (42208796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b878d88ce93f331fb422208270db2e5072e83151b249ea739aca9afc4cc68`  
		Last Modified: Sat, 20 Oct 2018 13:10:07 GMT  
		Size: 6.0 MB (6017446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:e32ba3e881e9d556ecea7076e84ff959003acc1f382fee6e49725588166193b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51494433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f485b0158b5774611e9a23f72e85955333edce322c5b3548c67ece1d27109f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:17:57 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:58 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:25:10 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:58:42 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:58:51 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 17 Nov 2018 06:58:53 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca335385668083eb7bb73aa2f629fa449a0884da94dbff320902dd9f56f30e`  
		Last Modified: Fri, 16 Nov 2018 22:57:12 GMT  
		Size: 43.3 MB (43279548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576883f702cea4c2d7e4e5ce58b7d79fcc0bc730ebe6d3613e98b083701b1c38`  
		Last Modified: Sat, 17 Nov 2018 07:07:32 GMT  
		Size: 6.0 MB (6019482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-otp-21-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:83f7bddc224bb58ac66ea2328634242b3318fbd20d1e75af15f791ec4b2bbaf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47787586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a92f522620713d14481154dc18509acfc7536d726da06f423406bda944307b0`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 11:59:55 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:06:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 12:06:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:52:37 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 20 Oct 2018 12:52:41 GMT
RUN set -xe 	&& OTP_MAJOR_VERSION="${OTP_VERSION%%.*}" 	&& ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" 	&& ELIXIR_DOWNLOAD_SHA256="883cf0cd6e46e726bbcf41e281a8987d2fbdbe0075a60f8acde52f2a0ac1cc7e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps 	&& mix local.hex --force 	&& mix local.rebar --force
# Sat, 20 Oct 2018 12:52:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e2644a2850abc5c661d3ba9a21bef7ef5e41d65306e1ebe1a7d718ca9ea15`  
		Last Modified: Sat, 20 Oct 2018 12:31:06 GMT  
		Size: 39.5 MB (39462247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33615c8f4cd454eb74654dfd41ccf3a8c107bba0a13637e2d50770912bae574b`  
		Last Modified: Sat, 20 Oct 2018 12:55:50 GMT  
		Size: 6.0 MB (6017417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-slim`

```console
$ docker pull elixir@sha256:0a9b70129a7ee93835cfd69db31a9df37e94069d55e93716773631af90358280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.6-slim` - linux; amd64

```console
$ docker pull elixir@sha256:20ba4c420e3e432eeb3b1d21183b67e518be64788950d878ec321715f366f3dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115768594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71476428cb9e2ae29f80cac26a5f34a6563e24a97f136361facb65b5c63de135`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:48:04 GMT
ENV OTP_VERSION=20.3.8.14
# Sat, 17 Nov 2018 06:09:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:09:37 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:59:35 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:59:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 10:00:00 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08eb9d09eaeb47d6b8ab0b1ce6b3d811fc3e2607f707c944504286cdcb4e273`  
		Last Modified: Sat, 17 Nov 2018 07:37:03 GMT  
		Size: 65.1 MB (65120611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc65629e246d6df483e8d578940595f1f5586a57673855ab4764df677e14da1`  
		Last Modified: Sat, 17 Nov 2018 10:18:22 GMT  
		Size: 5.3 MB (5327726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:917a100f74bd8e72592c30e01dbfaa3f081629e357e751bee08ff00da56e9b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107495632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0035215ac8b7ac3d34f458292dba0760974d9ed8f72152ba0f1d226f032f71b7`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:28 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:17:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:17:07 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 20:54:15 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 20:54:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:54:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bfc7b19ddb3b550923f890d0aff1bf3a05128607b38895bbd56d319043f7e`  
		Last Modified: Fri, 16 Nov 2018 13:44:30 GMT  
		Size: 60.1 MB (60092171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3825afd19a1cd239deaab10e299af5b5a863990c870e3a3a81e0952f8fc54a4d`  
		Last Modified: Fri, 16 Nov 2018 21:00:43 GMT  
		Size: 5.3 MB (5327321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:e9ea17737c740e2dee39ddd99ae281dcd490cc0dbab0979ff4b3ee29c710adb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109724997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e526d98291755edaa437eb29a611cafabc23efa545497c267526936f74c576`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:29:35 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 10:44:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:44:21 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 08:00:04 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 08:01:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 08:01:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f2bff52e1b665667858e9ecdbf82f7c2d7514231a51c3ece2618a040889db6`  
		Last Modified: Fri, 16 Nov 2018 11:10:11 GMT  
		Size: 61.3 MB (61280637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5309e8c0a3f6cf83ebf14ca0416a246cc0d43cffe393858fc5c4a7bb3346d955`  
		Last Modified: Sat, 17 Nov 2018 08:08:48 GMT  
		Size: 5.3 MB (5327660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; 386

```console
$ docker pull elixir@sha256:0e659dadcd9929977023f675fa3beea3a7ae16747eb24b854a6e1c4c3917a3ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119504573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a597e607fc2edff37c3c2c8baa2f31b6e96c3863bd660d0e6eb6c62f7a173d37`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 06 Nov 2018 12:44:03 GMT
ENV OTP_VERSION=20.3.8.11
# Tue, 06 Nov 2018 12:52:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="76fdb88a693e406efb5a484f87cfad50c5cabab932151e4f2e5ff59d2405ee40" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 06 Nov 2018 12:52:42 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 13:23:40 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:23:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:23:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e56ffe2c975ceda5d1f3af9da6f125ab53b7887c1ca06f167be0aeb8de8cb7`  
		Last Modified: Tue, 06 Nov 2018 13:05:27 GMT  
		Size: 68.1 MB (68137791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279f8528754891a0ebbe61ce7c21249ca357f7b132deee291219a550e3c16101`  
		Last Modified: Tue, 06 Nov 2018 13:26:54 GMT  
		Size: 5.3 MB (5327560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:3278ed636864a29a76e86ba23a38303a0347a630fa479804a4ec777559b2924d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113105028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a87b43aa9a7896705b56c5cba07753f9977af891d31c578b1d527010210012`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:37:17 GMT
ENV OTP_VERSION=20.3.8.14
# Fri, 16 Nov 2018 22:45:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a89f5558b296988a689013105294b1e3a968a01918be2552b5766d896169a616" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:45:28 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:56:29 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:57:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:57:41 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677d367798192852266b47dac3e4913f66748e51b374b9083199e4d0aa13a6`  
		Last Modified: Fri, 16 Nov 2018 23:00:36 GMT  
		Size: 62.2 MB (62171013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ef85e0b4ef8e2b01576db7d937d22113b4d3fe0be75f0d09fe391917bf3c2f`  
		Last Modified: Sat, 17 Nov 2018 07:06:22 GMT  
		Size: 5.3 MB (5327937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; s390x

```console
$ docker pull elixir@sha256:df6d4d9cbd377e736d9d777e83f70cc1a5fedc51282c540d6ae03572b1e762e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114286735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7f5cf75fdbe55492608f3633f510637a60e69809bc4fc5abb080adddd43e96`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:19:36 GMT
ENV OTP_VERSION=20.3.8.13
# Fri, 16 Nov 2018 13:30:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="31fd10d2a2f5a21501d13849a25b6b85fe9771370cbeb55a43017abeb6cb09e0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:30:53 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:35:22 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:35:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:35:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f257c06ce1d3bfffaf11ab367e9b52468c4e4fee80fa420968daa766e98395c9`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 63.8 MB (63754834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b54068a712c1cea1f1e64374dec799925123f3e29f5957e6016c6650bb7d94`  
		Last Modified: Fri, 16 Nov 2018 22:39:46 GMT  
		Size: 5.3 MB (5327082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7`

```console
$ docker pull elixir@sha256:acd22efecfbd447b38e0724bc272f4bdcd76b7f991ae65a929c6844a9c97b1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7` - linux; amd64

```console
$ docker pull elixir@sha256:69c9b182515c6c4465b1f9b4e5fa4d92900d1efe5d17e1ea632ec34e6be553c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467371332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52744688908f0f05d4e870fad87645bc528c838fc719a6c1c0cfcc9d9f3bf0d7`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:29:32 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 04:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:48:01 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 04:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 04:48:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 04:48:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 04:48:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 09:44:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:46:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 09:46:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fac97c797992467f16e936ef8a51ce174628486ec444e5f819310ac765111`  
		Last Modified: Sat, 17 Nov 2018 07:31:11 GMT  
		Size: 133.5 MB (133479863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a9e4bdadfc2c026aa57c7fdb06f6281cbe8eed77c3805d364b9078530f835`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 201.4 KB (201437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f819e071adef5423d7c42a812dbe2b02b55c1a447976fda53ade46cee601e8c3`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 3.8 MB (3809385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8c4437ae420271ffa6d5abaa1678b1abc44a604d755efc42f09e65542f802`  
		Last Modified: Sat, 17 Nov 2018 10:14:18 GMT  
		Size: 6.2 MB (6203148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7` - linux; arm variant v7

```console
$ docker pull elixir@sha256:c08b95e4e2004b3c1178c0a1bd54817cc1157157a5bb35e12029547f33482724
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.1 MB (432101077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3fe977411ee8f3b0a85a867d9e0d6edfc1061eeddb0733fa85d35b000da56f`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:57:40 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:07:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:07:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:07:35 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:07:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:07:41 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:08:24 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:57:33 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:58:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:59:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac678e8be21a25ee86d32b8261f2db6ba17f7a948c679fd40df27d0760e47f2a`  
		Last Modified: Sat, 20 Oct 2018 12:51:09 GMT  
		Size: 126.2 MB (126184285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51544b067220705949a501273d2dd929ca7f1aac47180702a29563e8a54b38`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e2f674148c662be477ce14936b1d0d811cc14e8380288c638c7b9d0d6bfba`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 3.7 MB (3716886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f568655ae2b9e881d9b33c006ec17f11fd83ff9268077a416d2394ec06c28b`  
		Last Modified: Tue, 06 Nov 2018 13:02:13 GMT  
		Size: 6.2 MB (6200894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:37c99c8f848e6c39ee19110428afb1ab113b5c67b79163a32d5ed85701ddb15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f84caa95a99785cc2fc091dd097028ad35ed7844262057d7eb83a6b2f539bf`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:40:32 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 08:57:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:57:58 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 08:57:59 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 08:58:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 08:58:16 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 08:59:20 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 09:42:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:44:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 09:44:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0b669d7e8bf17b79830b652a2fab0a08641acccc14b3bd5bddd9c859c63006`  
		Last Modified: Sat, 20 Oct 2018 10:04:03 GMT  
		Size: 129.6 MB (129573198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de04b535adaf6305347b0130f410f31dcb3839c4dab20d14563b1fac4d99713`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 201.4 KB (201444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d535ef3458277cdae816ee5e2429c38f237cd354ec7a23c9c710ec3a517476`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 3.7 MB (3717137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b75dce9f1508323a6739b155163d968323e966102a73bb52416f21a21e4d8d8`  
		Last Modified: Tue, 06 Nov 2018 09:55:40 GMT  
		Size: 6.2 MB (6203416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7` - linux; 386

```console
$ docker pull elixir@sha256:dc0d0fb2a15ea1483b775c8aadab51b57e94d986da1f7e864c9ace56525b31e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471562584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601f85f48666b075a76c76fd76a91841f24a04e419f704b1b90730bfb1546790`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:38:46 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:49:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:49:16 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:49:16 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 10:49:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 10:49:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 10:49:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 11:43:41 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:44:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 11:44:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d2603749bc06ea60f4aa103b525d502a148b9bcfa5c8d4dcb237adb12e2f4`  
		Last Modified: Sat, 20 Oct 2018 12:07:02 GMT  
		Size: 130.2 MB (130246046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a7aa3e3c913c18e67e694de46280ed09afcc8295946f426e0c85970dcd6bca`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9491a28182f93c8fc49081c60cb7b5eeb0961d744d0f988b8bb5fbc388f8c`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f27e318f373592b2c7dfb406c0a292350aed9393406fb66e622d7237b56e1`  
		Last Modified: Tue, 06 Nov 2018 11:47:52 GMT  
		Size: 6.2 MB (6200921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7` - linux; ppc64le

```console
$ docker pull elixir@sha256:cd9bdfc0819730db3f31a9fd8d51551ca56177e52ac7d59a96886281fd882a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.9 MB (459939294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331df3d3be901482d12bf34870b28e4755297891fb45fd7fe5b3a6ce3fa07da1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:57:28 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:07:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:27 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:07:29 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:07:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:07:38 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:08:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:58:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:00:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 23:00:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f2b6cbc01a30c9c3dd6fc3e9cf1e8caf4ecda24bd77d72dfcff02eecd1fe70`  
		Last Modified: Fri, 16 Nov 2018 22:54:04 GMT  
		Size: 130.9 MB (130938846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6096568fffcd057dca37182aacb9b6aab3ec3388925c93cfd2d7bb423a4773`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 201.4 KB (201449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd58108b46578349b359261bc2c83c3d913c499a60d19321d46017727ab2955`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 3.8 MB (3807868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442e03de80ae0f72baf85e81a986238bad7b6c9887ea288478f9055497937e01`  
		Last Modified: Fri, 16 Nov 2018 23:14:55 GMT  
		Size: 6.2 MB (6203504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7` - linux; s390x

```console
$ docker pull elixir@sha256:453cf7df5c04e1ce7d3a5660c4bf08d31672782d5dbd6963e687ac4925cfaf3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (459968698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58f2494173a1b35b1f7ba1797ac8ae3136787dc0edfa3faaa9b1ebd89aa48b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:41:31 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:52:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:52:02 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:52:02 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:52:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:52:06 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:52:36 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:47:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:49:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:49:23 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350fd435c2b268e1ed976d8793b3f85e629921751705966931f35f82629650d5`  
		Last Modified: Sat, 20 Oct 2018 12:30:22 GMT  
		Size: 134.3 MB (134314830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82703221227a71f3769e97f847d0a1edf0b707e13bce1039508387e3158480`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 201.4 KB (201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044901042e9ce6e219d3fce43c4151053709f94095a4b3e37c284599081c66ea`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844d5963df66d290fc319d86dab6a3642db7fb5fd7959a3298fb914219962355`  
		Last Modified: Tue, 06 Nov 2018 12:55:20 GMT  
		Size: 6.2 MB (6203003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7.4`

```console
$ docker pull elixir@sha256:acd22efecfbd447b38e0724bc272f4bdcd76b7f991ae65a929c6844a9c97b1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7.4` - linux; amd64

```console
$ docker pull elixir@sha256:69c9b182515c6c4465b1f9b4e5fa4d92900d1efe5d17e1ea632ec34e6be553c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467371332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52744688908f0f05d4e870fad87645bc528c838fc719a6c1c0cfcc9d9f3bf0d7`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:29:32 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 04:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:48:01 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 04:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 04:48:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 04:48:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 04:48:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 09:44:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:46:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 09:46:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fac97c797992467f16e936ef8a51ce174628486ec444e5f819310ac765111`  
		Last Modified: Sat, 17 Nov 2018 07:31:11 GMT  
		Size: 133.5 MB (133479863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a9e4bdadfc2c026aa57c7fdb06f6281cbe8eed77c3805d364b9078530f835`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 201.4 KB (201437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f819e071adef5423d7c42a812dbe2b02b55c1a447976fda53ade46cee601e8c3`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 3.8 MB (3809385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8c4437ae420271ffa6d5abaa1678b1abc44a604d755efc42f09e65542f802`  
		Last Modified: Sat, 17 Nov 2018 10:14:18 GMT  
		Size: 6.2 MB (6203148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4` - linux; arm variant v7

```console
$ docker pull elixir@sha256:c08b95e4e2004b3c1178c0a1bd54817cc1157157a5bb35e12029547f33482724
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.1 MB (432101077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3fe977411ee8f3b0a85a867d9e0d6edfc1061eeddb0733fa85d35b000da56f`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:57:40 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:07:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:07:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:07:35 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:07:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:07:41 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:08:24 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:57:33 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:58:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:59:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac678e8be21a25ee86d32b8261f2db6ba17f7a948c679fd40df27d0760e47f2a`  
		Last Modified: Sat, 20 Oct 2018 12:51:09 GMT  
		Size: 126.2 MB (126184285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51544b067220705949a501273d2dd929ca7f1aac47180702a29563e8a54b38`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e2f674148c662be477ce14936b1d0d811cc14e8380288c638c7b9d0d6bfba`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 3.7 MB (3716886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f568655ae2b9e881d9b33c006ec17f11fd83ff9268077a416d2394ec06c28b`  
		Last Modified: Tue, 06 Nov 2018 13:02:13 GMT  
		Size: 6.2 MB (6200894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:37c99c8f848e6c39ee19110428afb1ab113b5c67b79163a32d5ed85701ddb15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f84caa95a99785cc2fc091dd097028ad35ed7844262057d7eb83a6b2f539bf`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:40:32 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 08:57:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:57:58 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 08:57:59 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 08:58:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 08:58:16 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 08:59:20 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 09:42:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:44:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 09:44:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0b669d7e8bf17b79830b652a2fab0a08641acccc14b3bd5bddd9c859c63006`  
		Last Modified: Sat, 20 Oct 2018 10:04:03 GMT  
		Size: 129.6 MB (129573198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de04b535adaf6305347b0130f410f31dcb3839c4dab20d14563b1fac4d99713`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 201.4 KB (201444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d535ef3458277cdae816ee5e2429c38f237cd354ec7a23c9c710ec3a517476`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 3.7 MB (3717137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b75dce9f1508323a6739b155163d968323e966102a73bb52416f21a21e4d8d8`  
		Last Modified: Tue, 06 Nov 2018 09:55:40 GMT  
		Size: 6.2 MB (6203416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4` - linux; 386

```console
$ docker pull elixir@sha256:dc0d0fb2a15ea1483b775c8aadab51b57e94d986da1f7e864c9ace56525b31e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471562584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601f85f48666b075a76c76fd76a91841f24a04e419f704b1b90730bfb1546790`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:38:46 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:49:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:49:16 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:49:16 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 10:49:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 10:49:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 10:49:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 11:43:41 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:44:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 11:44:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d2603749bc06ea60f4aa103b525d502a148b9bcfa5c8d4dcb237adb12e2f4`  
		Last Modified: Sat, 20 Oct 2018 12:07:02 GMT  
		Size: 130.2 MB (130246046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a7aa3e3c913c18e67e694de46280ed09afcc8295946f426e0c85970dcd6bca`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9491a28182f93c8fc49081c60cb7b5eeb0961d744d0f988b8bb5fbc388f8c`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f27e318f373592b2c7dfb406c0a292350aed9393406fb66e622d7237b56e1`  
		Last Modified: Tue, 06 Nov 2018 11:47:52 GMT  
		Size: 6.2 MB (6200921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4` - linux; ppc64le

```console
$ docker pull elixir@sha256:cd9bdfc0819730db3f31a9fd8d51551ca56177e52ac7d59a96886281fd882a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.9 MB (459939294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331df3d3be901482d12bf34870b28e4755297891fb45fd7fe5b3a6ce3fa07da1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:57:28 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:07:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:27 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:07:29 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:07:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:07:38 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:08:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:58:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:00:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 23:00:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f2b6cbc01a30c9c3dd6fc3e9cf1e8caf4ecda24bd77d72dfcff02eecd1fe70`  
		Last Modified: Fri, 16 Nov 2018 22:54:04 GMT  
		Size: 130.9 MB (130938846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6096568fffcd057dca37182aacb9b6aab3ec3388925c93cfd2d7bb423a4773`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 201.4 KB (201449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd58108b46578349b359261bc2c83c3d913c499a60d19321d46017727ab2955`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 3.8 MB (3807868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442e03de80ae0f72baf85e81a986238bad7b6c9887ea288478f9055497937e01`  
		Last Modified: Fri, 16 Nov 2018 23:14:55 GMT  
		Size: 6.2 MB (6203504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4` - linux; s390x

```console
$ docker pull elixir@sha256:453cf7df5c04e1ce7d3a5660c4bf08d31672782d5dbd6963e687ac4925cfaf3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (459968698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58f2494173a1b35b1f7ba1797ac8ae3136787dc0edfa3faaa9b1ebd89aa48b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:41:31 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:52:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:52:02 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:52:02 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:52:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:52:06 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:52:36 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:47:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:49:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:49:23 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350fd435c2b268e1ed976d8793b3f85e629921751705966931f35f82629650d5`  
		Last Modified: Sat, 20 Oct 2018 12:30:22 GMT  
		Size: 134.3 MB (134314830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82703221227a71f3769e97f847d0a1edf0b707e13bce1039508387e3158480`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 201.4 KB (201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044901042e9ce6e219d3fce43c4151053709f94095a4b3e37c284599081c66ea`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844d5963df66d290fc319d86dab6a3642db7fb5fd7959a3298fb914219962355`  
		Last Modified: Tue, 06 Nov 2018 12:55:20 GMT  
		Size: 6.2 MB (6203003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7.4-alpine`

```console
$ docker pull elixir@sha256:c01c651ab448b54cde96a0a290a6af13586a8cf680edbd20ef80f5fb4fbb22d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7.4-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:ff79496de5ba476ade3ce199a9add4632062646d33aafa3dcbd791bea1150960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54713959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9233fdadf463e8e7deeffb656f22cf545bf969de878c1727d4cfb7c666abc465`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 05:07:27 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:07:27 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:24:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 05:24:14 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:51:53 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:54:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 09:54:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03095f56e8734932faabe3cccf80750cbb06e2070caceb91a6fcb1fdcea0035`  
		Last Modified: Sat, 17 Nov 2018 07:34:00 GMT  
		Size: 46.2 MB (46238818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead1bf8f450d37d6a351095accf5a8979dec8ccc617274ee284187a94c9220`  
		Last Modified: Sat, 17 Nov 2018 10:16:18 GMT  
		Size: 6.3 MB (6268210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:791e97debee51e68c55a2dff17abd7305060c9244e9ccb3f19db5bacd02398d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47473352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dd6dc041f1b556ce4ceb8ad7666dc66b3ff937692d184f9036aaa7e2ce0809`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 09:11:14 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:21:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 09:21:14 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:49:03 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:51:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 09:51:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97de03116d599725a9508e73bcf7f375bf59bc40f336d61b5d12691ed17edbe`  
		Last Modified: Sat, 20 Oct 2018 10:06:17 GMT  
		Size: 39.1 MB (39105624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbf442296d44c4060961957341ed2cfe4c05b6adb2b0fb490b03f5bdc24e3f0`  
		Last Modified: Tue, 06 Nov 2018 09:57:20 GMT  
		Size: 6.3 MB (6267790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-alpine` - linux; 386

```console
$ docker pull elixir@sha256:64ee0def501059c682110cda86c9f5b7238487d6d7c0af22110a8e60f0d99ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50745277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0df1c647fbd82d1e1d179238def9eb9e27d94cfc31cefd61122428038b5dda3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 10:59:07 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:09:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 11:09:31 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:46:08 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:47:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 11:47:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c1f16d134bab23f32ddab5d0ceb0ef335bbdde643a594db12965e0ec0a21e`  
		Last Modified: Sat, 20 Oct 2018 12:08:40 GMT  
		Size: 42.2 MB (42208796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e7ff30f6f760a0719d0b70a97a6b7ff6f2a5d46df1747c3c6868e1299d17`  
		Last Modified: Tue, 06 Nov 2018 11:49:00 GMT  
		Size: 6.3 MB (6264846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:85ac028da6c0eae48ed4f3455aeceb256841515ae47738c3d20dead06a04f8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51742858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e945779daee1be237fb6342dc11a37e57374228fcb6cc01d569489154206dbf`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:17:57 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:58 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:25:10 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:48:58 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:50:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 06:50:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca335385668083eb7bb73aa2f629fa449a0884da94dbff320902dd9f56f30e`  
		Last Modified: Fri, 16 Nov 2018 22:57:12 GMT  
		Size: 43.3 MB (43279548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717d65359eb3d35597c19474f6e4e3e11e2e72ccba8b8c44f6c6fa921c188ad5`  
		Last Modified: Sat, 17 Nov 2018 07:02:30 GMT  
		Size: 6.3 MB (6267907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:d059fa3c0b1e6db27c180e6da55500489266e090b031594acab3dab3f99b910d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cdbaecf2efdb803df5adad4c5a760e340362dc7718db1dc989862be87a99b8`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 11:59:55 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:06:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 12:06:30 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:52:09 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:53:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 12:53:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e2644a2850abc5c661d3ba9a21bef7ef5e41d65306e1ebe1a7d718ca9ea15`  
		Last Modified: Sat, 20 Oct 2018 12:31:06 GMT  
		Size: 39.5 MB (39462247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd9d777f8a7f5fd3a361049695ccb593f4ecd199650aadb8dca9d8deda19fd`  
		Last Modified: Tue, 06 Nov 2018 12:55:57 GMT  
		Size: 6.3 MB (6267638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7.4-slim`

```console
$ docker pull elixir@sha256:18f50f19edebd0e42b33be1c455122997ee612f09725ff02875e30fcd91aece1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7.4-slim` - linux; amd64

```console
$ docker pull elixir@sha256:e7d46d34856023f25002fef27ef5103ca9d9b3f039a4ab68fb5f49b5e034c474
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113478308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb2535e914dd9ccc184679223d606a539ae3bc0e0e0dffc7a53509dd6885d87`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:49:30 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:06:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:06:31 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:48:05 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:50:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 09:50:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca96e28dbce64c121d3d69f42b4023cfe42cb8778e20566c609f7251dc568c6`  
		Last Modified: Sat, 17 Nov 2018 07:32:43 GMT  
		Size: 61.5 MB (61472372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e10e618ffaa25ec5404609aba597eef56c5d7c6ab428adcbe57fbccd0700757`  
		Last Modified: Sat, 17 Nov 2018 10:15:13 GMT  
		Size: 6.7 MB (6685679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:e9acac3341e45e893ea624cbd6038b2627624f437478dff91cbc4ad1ff609fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105097971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09489d0d2686d9cfb17ba5120b52450c43160843a1407d990a46511e335f02a6`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 12:08:39 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:14:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:14:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:59:28 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:01:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:01:21 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae27cbaf5d22ca4438fb94030318c637462e858a371d518449a9fbf62ab5697`  
		Last Modified: Sat, 20 Oct 2018 12:51:56 GMT  
		Size: 56.4 MB (56352223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245f1a66867bd2fb821f8d817bd7075fa1736e4eb9b29c242e2f1e5f8e9a18e3`  
		Last Modified: Tue, 06 Nov 2018 13:02:40 GMT  
		Size: 6.7 MB (6682713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:693e9dcba750f6bbfb7adbfd1f23649bf45d0bdd7e80e19c47047e6cc536a20d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107348229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99faad5aeb23eceada37a83e48c346a13a166c87f94601a543174505f65227b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 08:59:33 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:10:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 09:10:52 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:45:22 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:48:47 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 09:48:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89974d7937d75c2a820139366284ed9e3c0d31c50e5efdfb54988a5c8fd55cde`  
		Last Modified: Sat, 20 Oct 2018 10:05:10 GMT  
		Size: 57.5 MB (57538560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917578ed1e2d69bf8ed13e12c06ede3f391f0db7209f0140126f1de11130049d`  
		Last Modified: Tue, 06 Nov 2018 09:56:31 GMT  
		Size: 6.7 MB (6686072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-slim` - linux; 386

```console
$ docker pull elixir@sha256:3d132dd09bec12e4d6d1c85ef93771d2b765bec298851b28708180ad8c64e17b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6a6d6350e2c1408c7e32ebb32d236340b2b90fcdd27ef5fd47ce91f6b30aba`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 10:49:53 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:58:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:58:57 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:44:43 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:45:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 11:45:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2b53e0177e2bafd43dc73e9de5cab41c14e51945f5ba0d80c0bdd5d61e85d4`  
		Last Modified: Sat, 20 Oct 2018 12:07:54 GMT  
		Size: 64.5 MB (64478091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2626f6039f65df7a5c09934877fc07ba9d015a6b94234cf7c83184453315b9`  
		Last Modified: Tue, 06 Nov 2018 11:48:26 GMT  
		Size: 6.7 MB (6682932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:0d24954df365c6b31297e65d61c4f65048b4c607b0fcd8744ee9f264e331db45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110752899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d2064b4bb255990f78767fa18a23f97be224aeb3a379de8918d364a9ba76ba`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:08:35 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:17:42 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 23:00:59 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f24f5863c56ae86eb47c4392bc1cd8794c35b208e545986b676e5d017d282ab`  
		Last Modified: Fri, 16 Nov 2018 22:55:51 GMT  
		Size: 58.5 MB (58460459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7531093b1290de11138473d348aa1266755d6ff32a3f69bb2841174c28451e12`  
		Last Modified: Fri, 16 Nov 2018 23:15:43 GMT  
		Size: 6.7 MB (6686362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7.4-slim` - linux; s390x

```console
$ docker pull elixir@sha256:a27c06078b0c26b9da416e089688f0cc38bd22bba63afa6914766a64d798af57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111901227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f18ec8316f3a8f5a28b326b26ecb353d1461f4fdf4ab59d10d8e502f990cab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:51:32 GMT
ENV OTP_VERSION=21.1.1
# Fri, 16 Nov 2018 13:01:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:16 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:31:57 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:33:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:33:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78171ecf9a4734c0f5faceba733320c623ef330bd67825dcc7c0d94f439c3a6`  
		Last Modified: Fri, 16 Nov 2018 13:52:30 GMT  
		Size: 60.0 MB (60011368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801279cb3b4350a0a931c3028d468f2c67a62aa32701e9ba2a8d757f52cd92b`  
		Last Modified: Fri, 16 Nov 2018 22:39:19 GMT  
		Size: 6.7 MB (6685040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7-alpine`

```console
$ docker pull elixir@sha256:c01c651ab448b54cde96a0a290a6af13586a8cf680edbd20ef80f5fb4fbb22d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7-alpine` - linux; amd64

```console
$ docker pull elixir@sha256:ff79496de5ba476ade3ce199a9add4632062646d33aafa3dcbd791bea1150960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54713959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9233fdadf463e8e7deeffb656f22cf545bf969de878c1727d4cfb7c666abc465`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 05:07:27 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:07:27 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:24:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 05:24:14 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:51:53 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:54:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 09:54:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03095f56e8734932faabe3cccf80750cbb06e2070caceb91a6fcb1fdcea0035`  
		Last Modified: Sat, 17 Nov 2018 07:34:00 GMT  
		Size: 46.2 MB (46238818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead1bf8f450d37d6a351095accf5a8979dec8ccc617274ee284187a94c9220`  
		Last Modified: Sat, 17 Nov 2018 10:16:18 GMT  
		Size: 6.3 MB (6268210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:791e97debee51e68c55a2dff17abd7305060c9244e9ccb3f19db5bacd02398d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47473352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dd6dc041f1b556ce4ceb8ad7666dc66b3ff937692d184f9036aaa7e2ce0809`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 09:11:14 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:21:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 09:21:14 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:49:03 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:51:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 09:51:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97de03116d599725a9508e73bcf7f375bf59bc40f336d61b5d12691ed17edbe`  
		Last Modified: Sat, 20 Oct 2018 10:06:17 GMT  
		Size: 39.1 MB (39105624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbf442296d44c4060961957341ed2cfe4c05b6adb2b0fb490b03f5bdc24e3f0`  
		Last Modified: Tue, 06 Nov 2018 09:57:20 GMT  
		Size: 6.3 MB (6267790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-alpine` - linux; 386

```console
$ docker pull elixir@sha256:64ee0def501059c682110cda86c9f5b7238487d6d7c0af22110a8e60f0d99ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50745277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0df1c647fbd82d1e1d179238def9eb9e27d94cfc31cefd61122428038b5dda3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 10:59:07 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:09:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 11:09:31 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:46:08 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:47:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 11:47:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c1f16d134bab23f32ddab5d0ceb0ef335bbdde643a594db12965e0ec0a21e`  
		Last Modified: Sat, 20 Oct 2018 12:08:40 GMT  
		Size: 42.2 MB (42208796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e7ff30f6f760a0719d0b70a97a6b7ff6f2a5d46df1747c3c6868e1299d17`  
		Last Modified: Tue, 06 Nov 2018 11:49:00 GMT  
		Size: 6.3 MB (6264846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:85ac028da6c0eae48ed4f3455aeceb256841515ae47738c3d20dead06a04f8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51742858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e945779daee1be237fb6342dc11a37e57374228fcb6cc01d569489154206dbf`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:17:57 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:58 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:25:10 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:48:58 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:50:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 06:50:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca335385668083eb7bb73aa2f629fa449a0884da94dbff320902dd9f56f30e`  
		Last Modified: Fri, 16 Nov 2018 22:57:12 GMT  
		Size: 43.3 MB (43279548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717d65359eb3d35597c19474f6e4e3e11e2e72ccba8b8c44f6c6fa921c188ad5`  
		Last Modified: Sat, 17 Nov 2018 07:02:30 GMT  
		Size: 6.3 MB (6267907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:d059fa3c0b1e6db27c180e6da55500489266e090b031594acab3dab3f99b910d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cdbaecf2efdb803df5adad4c5a760e340362dc7718db1dc989862be87a99b8`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 11:59:55 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:06:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 12:06:30 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:52:09 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:53:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 12:53:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e2644a2850abc5c661d3ba9a21bef7ef5e41d65306e1ebe1a7d718ca9ea15`  
		Last Modified: Sat, 20 Oct 2018 12:31:06 GMT  
		Size: 39.5 MB (39462247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd9d777f8a7f5fd3a361049695ccb593f4ecd199650aadb8dca9d8deda19fd`  
		Last Modified: Tue, 06 Nov 2018 12:55:57 GMT  
		Size: 6.3 MB (6267638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.7-slim`

```console
$ docker pull elixir@sha256:18f50f19edebd0e42b33be1c455122997ee612f09725ff02875e30fcd91aece1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:1.7-slim` - linux; amd64

```console
$ docker pull elixir@sha256:e7d46d34856023f25002fef27ef5103ca9d9b3f039a4ab68fb5f49b5e034c474
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113478308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb2535e914dd9ccc184679223d606a539ae3bc0e0e0dffc7a53509dd6885d87`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:49:30 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:06:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:06:31 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:48:05 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:50:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 09:50:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca96e28dbce64c121d3d69f42b4023cfe42cb8778e20566c609f7251dc568c6`  
		Last Modified: Sat, 17 Nov 2018 07:32:43 GMT  
		Size: 61.5 MB (61472372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e10e618ffaa25ec5404609aba597eef56c5d7c6ab428adcbe57fbccd0700757`  
		Last Modified: Sat, 17 Nov 2018 10:15:13 GMT  
		Size: 6.7 MB (6685679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:e9acac3341e45e893ea624cbd6038b2627624f437478dff91cbc4ad1ff609fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105097971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09489d0d2686d9cfb17ba5120b52450c43160843a1407d990a46511e335f02a6`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 12:08:39 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:14:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:14:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:59:28 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:01:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:01:21 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae27cbaf5d22ca4438fb94030318c637462e858a371d518449a9fbf62ab5697`  
		Last Modified: Sat, 20 Oct 2018 12:51:56 GMT  
		Size: 56.4 MB (56352223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245f1a66867bd2fb821f8d817bd7075fa1736e4eb9b29c242e2f1e5f8e9a18e3`  
		Last Modified: Tue, 06 Nov 2018 13:02:40 GMT  
		Size: 6.7 MB (6682713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:693e9dcba750f6bbfb7adbfd1f23649bf45d0bdd7e80e19c47047e6cc536a20d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107348229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99faad5aeb23eceada37a83e48c346a13a166c87f94601a543174505f65227b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 08:59:33 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:10:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 09:10:52 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:45:22 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:48:47 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 09:48:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89974d7937d75c2a820139366284ed9e3c0d31c50e5efdfb54988a5c8fd55cde`  
		Last Modified: Sat, 20 Oct 2018 10:05:10 GMT  
		Size: 57.5 MB (57538560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917578ed1e2d69bf8ed13e12c06ede3f391f0db7209f0140126f1de11130049d`  
		Last Modified: Tue, 06 Nov 2018 09:56:31 GMT  
		Size: 6.7 MB (6686072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-slim` - linux; 386

```console
$ docker pull elixir@sha256:3d132dd09bec12e4d6d1c85ef93771d2b765bec298851b28708180ad8c64e17b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6a6d6350e2c1408c7e32ebb32d236340b2b90fcdd27ef5fd47ce91f6b30aba`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 10:49:53 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:58:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:58:57 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:44:43 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:45:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 11:45:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2b53e0177e2bafd43dc73e9de5cab41c14e51945f5ba0d80c0bdd5d61e85d4`  
		Last Modified: Sat, 20 Oct 2018 12:07:54 GMT  
		Size: 64.5 MB (64478091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2626f6039f65df7a5c09934877fc07ba9d015a6b94234cf7c83184453315b9`  
		Last Modified: Tue, 06 Nov 2018 11:48:26 GMT  
		Size: 6.7 MB (6682932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:0d24954df365c6b31297e65d61c4f65048b4c607b0fcd8744ee9f264e331db45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110752899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d2064b4bb255990f78767fa18a23f97be224aeb3a379de8918d364a9ba76ba`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:08:35 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:17:42 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 23:00:59 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f24f5863c56ae86eb47c4392bc1cd8794c35b208e545986b676e5d017d282ab`  
		Last Modified: Fri, 16 Nov 2018 22:55:51 GMT  
		Size: 58.5 MB (58460459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7531093b1290de11138473d348aa1266755d6ff32a3f69bb2841174c28451e12`  
		Last Modified: Fri, 16 Nov 2018 23:15:43 GMT  
		Size: 6.7 MB (6686362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.7-slim` - linux; s390x

```console
$ docker pull elixir@sha256:a27c06078b0c26b9da416e089688f0cc38bd22bba63afa6914766a64d798af57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111901227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f18ec8316f3a8f5a28b326b26ecb353d1461f4fdf4ab59d10d8e502f990cab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:51:32 GMT
ENV OTP_VERSION=21.1.1
# Fri, 16 Nov 2018 13:01:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:16 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:31:57 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:33:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:33:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78171ecf9a4734c0f5faceba733320c623ef330bd67825dcc7c0d94f439c3a6`  
		Last Modified: Fri, 16 Nov 2018 13:52:30 GMT  
		Size: 60.0 MB (60011368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801279cb3b4350a0a931c3028d468f2c67a62aa32701e9ba2a8d757f52cd92b`  
		Last Modified: Fri, 16 Nov 2018 22:39:19 GMT  
		Size: 6.7 MB (6685040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:alpine`

```console
$ docker pull elixir@sha256:c01c651ab448b54cde96a0a290a6af13586a8cf680edbd20ef80f5fb4fbb22d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:alpine` - linux; amd64

```console
$ docker pull elixir@sha256:ff79496de5ba476ade3ce199a9add4632062646d33aafa3dcbd791bea1150960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54713959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9233fdadf463e8e7deeffb656f22cf545bf969de878c1727d4cfb7c666abc465`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 17 Nov 2018 05:07:27 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:07:27 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 05:24:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 17 Nov 2018 05:24:14 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:51:53 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:54:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 09:54:14 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03095f56e8734932faabe3cccf80750cbb06e2070caceb91a6fcb1fdcea0035`  
		Last Modified: Sat, 17 Nov 2018 07:34:00 GMT  
		Size: 46.2 MB (46238818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead1bf8f450d37d6a351095accf5a8979dec8ccc617274ee284187a94c9220`  
		Last Modified: Sat, 17 Nov 2018 10:16:18 GMT  
		Size: 6.3 MB (6268210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:791e97debee51e68c55a2dff17abd7305060c9244e9ccb3f19db5bacd02398d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47473352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40dd6dc041f1b556ce4ceb8ad7666dc66b3ff937692d184f9036aaa7e2ce0809`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 09:11:14 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:21:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 09:21:14 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:49:03 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:51:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 09:51:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97de03116d599725a9508e73bcf7f375bf59bc40f336d61b5d12691ed17edbe`  
		Last Modified: Sat, 20 Oct 2018 10:06:17 GMT  
		Size: 39.1 MB (39105624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbf442296d44c4060961957341ed2cfe4c05b6adb2b0fb490b03f5bdc24e3f0`  
		Last Modified: Tue, 06 Nov 2018 09:57:20 GMT  
		Size: 6.3 MB (6267790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; 386

```console
$ docker pull elixir@sha256:64ee0def501059c682110cda86c9f5b7238487d6d7c0af22110a8e60f0d99ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50745277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0df1c647fbd82d1e1d179238def9eb9e27d94cfc31cefd61122428038b5dda3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 10:59:07 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:09:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 11:09:31 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:46:08 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:47:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 11:47:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25c1f16d134bab23f32ddab5d0ceb0ef335bbdde643a594db12965e0ec0a21e`  
		Last Modified: Sat, 20 Oct 2018 12:08:40 GMT  
		Size: 42.2 MB (42208796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704e7ff30f6f760a0719d0b70a97a6b7ff6f2a5d46df1747c3c6868e1299d17`  
		Last Modified: Tue, 06 Nov 2018 11:49:00 GMT  
		Size: 6.3 MB (6264846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:85ac028da6c0eae48ed4f3455aeceb256841515ae47738c3d20dead06a04f8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51742858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e945779daee1be237fb6342dc11a37e57374228fcb6cc01d569489154206dbf`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 22:17:57 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:58 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033"	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "${REBAR3_DOWNLOAD_SHA256}  rebar3-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/rebar3-src 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 16 Nov 2018 22:25:10 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 06:48:58 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 06:50:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Sat, 17 Nov 2018 06:50:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baca335385668083eb7bb73aa2f629fa449a0884da94dbff320902dd9f56f30e`  
		Last Modified: Fri, 16 Nov 2018 22:57:12 GMT  
		Size: 43.3 MB (43279548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717d65359eb3d35597c19474f6e4e3e11e2e72ccba8b8c44f6c6fa921c188ad5`  
		Last Modified: Sat, 17 Nov 2018 07:02:30 GMT  
		Size: 6.3 MB (6267907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; s390x

```console
$ docker pull elixir@sha256:d059fa3c0b1e6db27c180e6da55500489266e090b031594acab3dab3f99b910d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cdbaecf2efdb803df5adad4c5a760e340362dc7718db1dc989862be87a99b8`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 20 Oct 2018 11:59:55 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:06:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 20 Oct 2018 12:06:30 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:52:09 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:53:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apk del .build-deps
# Tue, 06 Nov 2018 12:53:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5e2644a2850abc5c661d3ba9a21bef7ef5e41d65306e1ebe1a7d718ca9ea15`  
		Last Modified: Sat, 20 Oct 2018 12:31:06 GMT  
		Size: 39.5 MB (39462247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dd9d777f8a7f5fd3a361049695ccb593f4ecd199650aadb8dca9d8deda19fd`  
		Last Modified: Tue, 06 Nov 2018 12:55:57 GMT  
		Size: 6.3 MB (6267638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:latest`

```console
$ docker pull elixir@sha256:acd22efecfbd447b38e0724bc272f4bdcd76b7f991ae65a929c6844a9c97b1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:latest` - linux; amd64

```console
$ docker pull elixir@sha256:69c9b182515c6c4465b1f9b4e5fa4d92900d1efe5d17e1ea632ec34e6be553c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467371332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52744688908f0f05d4e870fad87645bc528c838fc719a6c1c0cfcc9d9f3bf0d7`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:29:32 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 04:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:48:01 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 04:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 17 Nov 2018 04:48:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 17 Nov 2018 04:48:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 17 Nov 2018 04:48:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Sat, 17 Nov 2018 09:44:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:46:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Sat, 17 Nov 2018 09:46:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fac97c797992467f16e936ef8a51ce174628486ec444e5f819310ac765111`  
		Last Modified: Sat, 17 Nov 2018 07:31:11 GMT  
		Size: 133.5 MB (133479863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655a9e4bdadfc2c026aa57c7fdb06f6281cbe8eed77c3805d364b9078530f835`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 201.4 KB (201437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f819e071adef5423d7c42a812dbe2b02b55c1a447976fda53ade46cee601e8c3`  
		Last Modified: Sat, 17 Nov 2018 07:30:54 GMT  
		Size: 3.8 MB (3809385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8c4437ae420271ffa6d5abaa1678b1abc44a604d755efc42f09e65542f802`  
		Last Modified: Sat, 17 Nov 2018 10:14:18 GMT  
		Size: 6.2 MB (6203148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; arm variant v7

```console
$ docker pull elixir@sha256:c08b95e4e2004b3c1178c0a1bd54817cc1157157a5bb35e12029547f33482724
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.1 MB (432101077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3fe977411ee8f3b0a85a867d9e0d6edfc1061eeddb0733fa85d35b000da56f`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:57:40 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:07:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:07:30 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 12:07:35 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 12:07:40 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 12:07:41 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 12:08:24 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:57:33 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:58:59 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:59:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac678e8be21a25ee86d32b8261f2db6ba17f7a948c679fd40df27d0760e47f2a`  
		Last Modified: Sat, 20 Oct 2018 12:51:09 GMT  
		Size: 126.2 MB (126184285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51544b067220705949a501273d2dd929ca7f1aac47180702a29563e8a54b38`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2e2f674148c662be477ce14936b1d0d811cc14e8380288c638c7b9d0d6bfba`  
		Last Modified: Sat, 20 Oct 2018 12:50:23 GMT  
		Size: 3.7 MB (3716886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f568655ae2b9e881d9b33c006ec17f11fd83ff9268077a416d2394ec06c28b`  
		Last Modified: Tue, 06 Nov 2018 13:02:13 GMT  
		Size: 6.2 MB (6200894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:37c99c8f848e6c39ee19110428afb1ab113b5c67b79163a32d5ed85701ddb15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f84caa95a99785cc2fc091dd097028ad35ed7844262057d7eb83a6b2f539bf`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:40:32 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 08:57:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 08:57:58 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 08:57:59 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 08:58:07 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 08:58:16 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 08:59:20 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 09:42:55 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:44:56 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 09:44:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0b669d7e8bf17b79830b652a2fab0a08641acccc14b3bd5bddd9c859c63006`  
		Last Modified: Sat, 20 Oct 2018 10:04:03 GMT  
		Size: 129.6 MB (129573198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de04b535adaf6305347b0130f410f31dcb3839c4dab20d14563b1fac4d99713`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 201.4 KB (201444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d535ef3458277cdae816ee5e2429c38f237cd354ec7a23c9c710ec3a517476`  
		Last Modified: Sat, 20 Oct 2018 10:03:36 GMT  
		Size: 3.7 MB (3717137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b75dce9f1508323a6739b155163d968323e966102a73bb52416f21a21e4d8d8`  
		Last Modified: Tue, 06 Nov 2018 09:55:40 GMT  
		Size: 6.2 MB (6203416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; 386

```console
$ docker pull elixir@sha256:dc0d0fb2a15ea1483b775c8aadab51b57e94d986da1f7e864c9ace56525b31e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.6 MB (471562584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601f85f48666b075a76c76fd76a91841f24a04e419f704b1b90730bfb1546790`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:38:46 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:49:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:49:16 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 10:49:16 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 10:49:19 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 10:49:19 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 10:49:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 11:43:41 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:44:30 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 11:44:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d2603749bc06ea60f4aa103b525d502a148b9bcfa5c8d4dcb237adb12e2f4`  
		Last Modified: Sat, 20 Oct 2018 12:07:02 GMT  
		Size: 130.2 MB (130246046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a7aa3e3c913c18e67e694de46280ed09afcc8295946f426e0c85970dcd6bca`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 201.4 KB (201439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9491a28182f93c8fc49081c60cb7b5eeb0961d744d0f988b8bb5fbc388f8c`  
		Last Modified: Sat, 20 Oct 2018 12:06:45 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f27e318f373592b2c7dfb406c0a292350aed9393406fb66e622d7237b56e1`  
		Last Modified: Tue, 06 Nov 2018 11:47:52 GMT  
		Size: 6.2 MB (6200921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; ppc64le

```console
$ docker pull elixir@sha256:cd9bdfc0819730db3f31a9fd8d51551ca56177e52ac7d59a96886281fd882a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.9 MB (459939294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331df3d3be901482d12bf34870b28e4755297891fb45fd7fe5b3a6ce3fa07da1`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:57:28 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:07:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:27 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:07:29 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 16 Nov 2018 22:07:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 16 Nov 2018 22:07:38 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 16 Nov 2018 22:08:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 16 Nov 2018 22:58:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:00:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 16 Nov 2018 23:00:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f2b6cbc01a30c9c3dd6fc3e9cf1e8caf4ecda24bd77d72dfcff02eecd1fe70`  
		Last Modified: Fri, 16 Nov 2018 22:54:04 GMT  
		Size: 130.9 MB (130938846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6096568fffcd057dca37182aacb9b6aab3ec3388925c93cfd2d7bb423a4773`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 201.4 KB (201449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd58108b46578349b359261bc2c83c3d913c499a60d19321d46017727ab2955`  
		Last Modified: Fri, 16 Nov 2018 22:53:26 GMT  
		Size: 3.8 MB (3807868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442e03de80ae0f72baf85e81a986238bad7b6c9887ea288478f9055497937e01`  
		Last Modified: Fri, 16 Nov 2018 23:14:55 GMT  
		Size: 6.2 MB (6203504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; s390x

```console
$ docker pull elixir@sha256:453cf7df5c04e1ce7d3a5660c4bf08d31672782d5dbd6963e687ac4925cfaf3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.0 MB (459968698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c58f2494173a1b35b1f7ba1797ac8ae3136787dc0edfa3faaa9b1ebd89aa48b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:41:31 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 11:52:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 11:52:02 GMT
CMD ["erl"]
# Sat, 20 Oct 2018 11:52:02 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 20 Oct 2018 11:52:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 20 Oct 2018 11:52:06 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 20 Oct 2018 11:52:36 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 06 Nov 2018 12:47:49 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 12:49:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 06 Nov 2018 12:49:23 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350fd435c2b268e1ed976d8793b3f85e629921751705966931f35f82629650d5`  
		Last Modified: Sat, 20 Oct 2018 12:30:22 GMT  
		Size: 134.3 MB (134314830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82703221227a71f3769e97f847d0a1edf0b707e13bce1039508387e3158480`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 201.4 KB (201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044901042e9ce6e219d3fce43c4151053709f94095a4b3e37c284599081c66ea`  
		Last Modified: Sat, 20 Oct 2018 12:30:08 GMT  
		Size: 3.7 MB (3716838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844d5963df66d290fc319d86dab6a3642db7fb5fd7959a3298fb914219962355`  
		Last Modified: Tue, 06 Nov 2018 12:55:20 GMT  
		Size: 6.2 MB (6203003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:slim`

```console
$ docker pull elixir@sha256:18f50f19edebd0e42b33be1c455122997ee612f09725ff02875e30fcd91aece1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `elixir:slim` - linux; amd64

```console
$ docker pull elixir@sha256:e7d46d34856023f25002fef27ef5103ca9d9b3f039a4ab68fb5f49b5e034c474
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113478308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb2535e914dd9ccc184679223d606a539ae3bc0e0e0dffc7a53509dd6885d87`
-	Default Command: `["iex"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:49:30 GMT
ENV OTP_VERSION=21.1.2
# Sat, 17 Nov 2018 05:06:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:06:31 GMT
CMD ["erl"]
# Sat, 17 Nov 2018 09:48:05 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Sat, 17 Nov 2018 09:50:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 09:50:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca96e28dbce64c121d3d69f42b4023cfe42cb8778e20566c609f7251dc568c6`  
		Last Modified: Sat, 17 Nov 2018 07:32:43 GMT  
		Size: 61.5 MB (61472372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e10e618ffaa25ec5404609aba597eef56c5d7c6ab428adcbe57fbccd0700757`  
		Last Modified: Sat, 17 Nov 2018 10:15:13 GMT  
		Size: 6.7 MB (6685679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:e9acac3341e45e893ea624cbd6038b2627624f437478dff91cbc4ad1ff609fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105097971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09489d0d2686d9cfb17ba5120b52450c43160843a1407d990a46511e335f02a6`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 12:08:39 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 12:14:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 12:14:17 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 12:59:28 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 13:01:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 13:01:21 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae27cbaf5d22ca4438fb94030318c637462e858a371d518449a9fbf62ab5697`  
		Last Modified: Sat, 20 Oct 2018 12:51:56 GMT  
		Size: 56.4 MB (56352223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245f1a66867bd2fb821f8d817bd7075fa1736e4eb9b29c242e2f1e5f8e9a18e3`  
		Last Modified: Tue, 06 Nov 2018 13:02:40 GMT  
		Size: 6.7 MB (6682713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:693e9dcba750f6bbfb7adbfd1f23649bf45d0bdd7e80e19c47047e6cc536a20d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107348229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99faad5aeb23eceada37a83e48c346a13a166c87f94601a543174505f65227b`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 08:59:33 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 09:10:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 09:10:52 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 09:45:22 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 09:48:47 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 09:48:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89974d7937d75c2a820139366284ed9e3c0d31c50e5efdfb54988a5c8fd55cde`  
		Last Modified: Sat, 20 Oct 2018 10:05:10 GMT  
		Size: 57.5 MB (57538560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917578ed1e2d69bf8ed13e12c06ede3f391f0db7209f0140126f1de11130049d`  
		Last Modified: Tue, 06 Nov 2018 09:56:31 GMT  
		Size: 6.7 MB (6686072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; 386

```console
$ docker pull elixir@sha256:3d132dd09bec12e4d6d1c85ef93771d2b765bec298851b28708180ad8c64e17b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117200245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6a6d6350e2c1408c7e32ebb32d236340b2b90fcdd27ef5fd47ce91f6b30aba`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Sat, 20 Oct 2018 10:49:53 GMT
ENV OTP_VERSION=21.1.1
# Sat, 20 Oct 2018 10:58:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 20 Oct 2018 10:58:57 GMT
CMD ["erl"]
# Tue, 06 Nov 2018 11:44:43 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Tue, 06 Nov 2018 11:45:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 06 Nov 2018 11:45:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2b53e0177e2bafd43dc73e9de5cab41c14e51945f5ba0d80c0bdd5d61e85d4`  
		Last Modified: Sat, 20 Oct 2018 12:07:54 GMT  
		Size: 64.5 MB (64478091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2626f6039f65df7a5c09934877fc07ba9d015a6b94234cf7c83184453315b9`  
		Last Modified: Tue, 06 Nov 2018 11:48:26 GMT  
		Size: 6.7 MB (6682932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:0d24954df365c6b31297e65d61c4f65048b4c607b0fcd8744ee9f264e331db45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110752899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d2064b4bb255990f78767fa18a23f97be224aeb3a379de8918d364a9ba76ba`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:08:35 GMT
ENV OTP_VERSION=21.1.2
# Fri, 16 Nov 2018 22:17:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3e3c893a4c025538c3508838b2f2f08842202449d161b755de7df08938e1e0d0" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:17:42 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 23:00:59 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f24f5863c56ae86eb47c4392bc1cd8794c35b208e545986b676e5d017d282ab`  
		Last Modified: Fri, 16 Nov 2018 22:55:51 GMT  
		Size: 58.5 MB (58460459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7531093b1290de11138473d348aa1266755d6ff32a3f69bb2841174c28451e12`  
		Last Modified: Fri, 16 Nov 2018 23:15:43 GMT  
		Size: 6.7 MB (6686362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; s390x

```console
$ docker pull elixir@sha256:a27c06078b0c26b9da416e089688f0cc38bd22bba63afa6914766a64d798af57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111901227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f18ec8316f3a8f5a28b326b26ecb353d1461f4fdf4ab59d10d8e502f990cab`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:51:32 GMT
ENV OTP_VERSION=21.1.1
# Fri, 16 Nov 2018 13:01:16 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a6588243e9659960e184083f49b15ea37890e4cd9bb8aef84ba4180db68befc3" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:01:16 GMT
CMD ["erl"]
# Fri, 16 Nov 2018 22:31:57 GMT
ENV ELIXIR_VERSION=v1.7.4 LANG=C.UTF-8
# Fri, 16 Nov 2018 22:33:28 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="c7c87983e03a1dcf20078141a22355e88dadb26b53d3f3f98b9a9268687f9e20" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:33:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78171ecf9a4734c0f5faceba733320c623ef330bd67825dcc7c0d94f439c3a6`  
		Last Modified: Fri, 16 Nov 2018 13:52:30 GMT  
		Size: 60.0 MB (60011368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801279cb3b4350a0a931c3028d468f2c67a62aa32701e9ba2a8d757f52cd92b`  
		Last Modified: Fri, 16 Nov 2018 22:39:19 GMT  
		Size: 6.7 MB (6685040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
