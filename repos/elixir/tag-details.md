<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elixir`

-	[`elixir:1.3`](#elixir13)
-	[`elixir:1.3.4`](#elixir134)
-	[`elixir:1.3.4-slim`](#elixir134-slim)
-	[`elixir:1.3-slim`](#elixir13-slim)
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
-	[`elixir:1.6.6-slim`](#elixir166-slim)
-	[`elixir:1.6-alpine`](#elixir16-alpine)
-	[`elixir:1.6-slim`](#elixir16-slim)
-	[`elixir:alpine`](#elixiralpine)
-	[`elixir:latest`](#elixirlatest)
-	[`elixir:slim`](#elixirslim)

## `elixir:1.3`

```console
$ docker pull elixir@sha256:70753b4ce31a7694e4d570c7cfae9b6f6dccc777952b8fdb5c0da36a4f1295df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.3` - linux; amd64

```console
$ docker pull elixir@sha256:a6652a1f716166efb9923585d26920bd9c9af3fe28834530f05054ed404c4bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398223833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4004d19852602923501c1fa19f67f3d5400b8c9655d2c0a6b2871eb2f1f91a`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:01:02 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:10:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:10:01 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:10:01 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:10:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:10:05 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:10:25 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:59:25 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 11:00:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:00:07 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1291661b257aaa40c575dcede414ed705fc7f4537a2348e333c88edf25f5515d`  
		Last Modified: Wed, 27 Jun 2018 08:52:52 GMT  
		Size: 144.6 MB (144566357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0df1e11ace24776c7c154ed2897d81b0fe91e59d3e314cc50b7ac479a1d16aa`  
		Last Modified: Wed, 27 Jun 2018 08:52:33 GMT  
		Size: 199.2 KB (199226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50508a80fc424786e6bf5cd225afc53c9fdcaf994e691b506961a8cd57d56ef1`  
		Last Modified: Wed, 27 Jun 2018 08:52:32 GMT  
		Size: 3.4 MB (3393231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94624ccad18e5de03e49b69beb9db1fd1e4ad5594735d18b8d0371f008575fb4`  
		Last Modified: Wed, 27 Jun 2018 11:06:12 GMT  
		Size: 3.8 MB (3837068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f4e003e248e86617ae17d490cd4f7b279fcae6b1ec2eaa43b7e52647bcd492d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365734522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a46fff456832996f57ad50001fa8005db0e23a64de0c204a2297f4bc8958599`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:07:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:08:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:57:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:07:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:07:57 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:07:58 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 12:08:02 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:14:19 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:14:56 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:43:38 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:44:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:44:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0195f0b71282f9e483da45354cbd4936eb181ab7c78e1b2d06e1a66dfc9314`  
		Last Modified: Sat, 05 May 2018 12:31:38 GMT  
		Size: 16.8 MB (16762537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea25efde81f7bcedccd78742242186f3b31c8ec39d145509bc5509a57c905fb`  
		Last Modified: Sat, 05 May 2018 12:32:13 GMT  
		Size: 39.7 MB (39727473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d564edb58568a4386627b4e93eebaeaf6ccfeb8bb27cf70f8f5a8dad65bcd89`  
		Last Modified: Sat, 05 May 2018 12:33:06 GMT  
		Size: 114.1 MB (114067540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7b2322908c28f691e7886076d2a53629a74ebde843ac7d45191cdd3abbfed`  
		Last Modified: Fri, 11 May 2018 12:19:08 GMT  
		Size: 137.6 MB (137615032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7dbc9ddea5bccf7d1401965a4d777033801c7d667fc9e7d8623294afb1a03f`  
		Last Modified: Fri, 11 May 2018 12:18:42 GMT  
		Size: 199.2 KB (199236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978f82d3cf73a0732bbf9329449cdf3c93e1e8494b2ab3a0630d16ded2c7ce7`  
		Last Modified: Wed, 06 Jun 2018 12:19:56 GMT  
		Size: 3.3 MB (3331321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f25af91e6b111b0009e38c8e03ca2eaa2cfdfa6c923ecc265cabd935dda4a1`  
		Last Modified: Wed, 06 Jun 2018 12:48:25 GMT  
		Size: 3.8 MB (3835686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:a0c49d8603639922dc7e5dcef3b7c6bbc70b9ecbe7c96ecc72282e7c85edf1d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374567996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee514636d7a1f3c99584dd722dc6089ed58addd5f3c70f9f3f154dc7d0e851d`
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
# Wed, 06 Jun 2018 17:39:01 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 17:39:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 17:39:44 GMT
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
	-	`sha256:8f5f10c724e16aaba35e5ed25c9a00a66b33f0cebe33680aafa50a0d8cb5d219`  
		Last Modified: Wed, 06 Jun 2018 17:43:16 GMT  
		Size: 3.8 MB (3836442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3` - linux; 386

```console
$ docker pull elixir@sha256:ec260f572945c4dcdab94710e0d90eeabcad62e4816a3075b560cb9698e592db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.3 MB (401252214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640b6bf6ee7b496b53503ac0a00b677bf445731fce305fe9632116d306079db3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:42:24 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 11:54:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:54:32 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:54:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:54:37 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:55:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 16:00:39 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:01:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:01:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f963b082be630cf0174aab7da63699d9487e57b28daa553fbf14228d71b2316`  
		Last Modified: Wed, 27 Jun 2018 12:47:50 GMT  
		Size: 140.3 MB (140344376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba1751a20ca96dff01fe4fb2bbaab93e13df3616959e5006b4478348b885ec`  
		Last Modified: Wed, 27 Jun 2018 12:47:14 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958ca7aa10ae1798fec7d18d0c3c5c710b9ddefe641ad7cc20d4da6e5a38eeed`  
		Last Modified: Wed, 27 Jun 2018 12:47:15 GMT  
		Size: 3.4 MB (3393655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c14608d010f800dfabfb60e19fc10ea76dead819f58a25ae3f69b286d611847`  
		Last Modified: Wed, 27 Jun 2018 16:08:19 GMT  
		Size: 3.8 MB (3836493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3` - linux; s390x

```console
$ docker pull elixir@sha256:167ad24b056318f47023348908a2d77050f886fae1a4e1258de1f44e6b13808f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384990289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57ecf8e98ef45cf0e35d419c8f40cf666acd2414046409434aca4911d3a30cd`
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
# Wed, 06 Jun 2018 12:25:55 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:26:08 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:08 GMT
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
	-	`sha256:4bee5444249b44e416fb2dc8be155b4cbd737914a3336405bdd79218d0bfc291`  
		Last Modified: Wed, 06 Jun 2018 12:30:07 GMT  
		Size: 3.8 MB (3834323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3.4`

```console
$ docker pull elixir@sha256:70753b4ce31a7694e4d570c7cfae9b6f6dccc777952b8fdb5c0da36a4f1295df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.3.4` - linux; amd64

```console
$ docker pull elixir@sha256:a6652a1f716166efb9923585d26920bd9c9af3fe28834530f05054ed404c4bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398223833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd4004d19852602923501c1fa19f67f3d5400b8c9655d2c0a6b2871eb2f1f91a`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:01:02 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:10:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:10:01 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:10:01 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:10:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:10:05 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:10:25 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:59:25 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 11:00:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:00:07 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1291661b257aaa40c575dcede414ed705fc7f4537a2348e333c88edf25f5515d`  
		Last Modified: Wed, 27 Jun 2018 08:52:52 GMT  
		Size: 144.6 MB (144566357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0df1e11ace24776c7c154ed2897d81b0fe91e59d3e314cc50b7ac479a1d16aa`  
		Last Modified: Wed, 27 Jun 2018 08:52:33 GMT  
		Size: 199.2 KB (199226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50508a80fc424786e6bf5cd225afc53c9fdcaf994e691b506961a8cd57d56ef1`  
		Last Modified: Wed, 27 Jun 2018 08:52:32 GMT  
		Size: 3.4 MB (3393231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94624ccad18e5de03e49b69beb9db1fd1e4ad5594735d18b8d0371f008575fb4`  
		Last Modified: Wed, 27 Jun 2018 11:06:12 GMT  
		Size: 3.8 MB (3837068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f4e003e248e86617ae17d490cd4f7b279fcae6b1ec2eaa43b7e52647bcd492d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365734522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a46fff456832996f57ad50001fa8005db0e23a64de0c204a2297f4bc8958599`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:07:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:08:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:57:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:07:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:07:57 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:07:58 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 12:08:02 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:14:19 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:14:56 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:43:38 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:44:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:44:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0195f0b71282f9e483da45354cbd4936eb181ab7c78e1b2d06e1a66dfc9314`  
		Last Modified: Sat, 05 May 2018 12:31:38 GMT  
		Size: 16.8 MB (16762537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea25efde81f7bcedccd78742242186f3b31c8ec39d145509bc5509a57c905fb`  
		Last Modified: Sat, 05 May 2018 12:32:13 GMT  
		Size: 39.7 MB (39727473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d564edb58568a4386627b4e93eebaeaf6ccfeb8bb27cf70f8f5a8dad65bcd89`  
		Last Modified: Sat, 05 May 2018 12:33:06 GMT  
		Size: 114.1 MB (114067540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7b2322908c28f691e7886076d2a53629a74ebde843ac7d45191cdd3abbfed`  
		Last Modified: Fri, 11 May 2018 12:19:08 GMT  
		Size: 137.6 MB (137615032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7dbc9ddea5bccf7d1401965a4d777033801c7d667fc9e7d8623294afb1a03f`  
		Last Modified: Fri, 11 May 2018 12:18:42 GMT  
		Size: 199.2 KB (199236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978f82d3cf73a0732bbf9329449cdf3c93e1e8494b2ab3a0630d16ded2c7ce7`  
		Last Modified: Wed, 06 Jun 2018 12:19:56 GMT  
		Size: 3.3 MB (3331321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f25af91e6b111b0009e38c8e03ca2eaa2cfdfa6c923ecc265cabd935dda4a1`  
		Last Modified: Wed, 06 Jun 2018 12:48:25 GMT  
		Size: 3.8 MB (3835686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:a0c49d8603639922dc7e5dcef3b7c6bbc70b9ecbe7c96ecc72282e7c85edf1d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374567996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee514636d7a1f3c99584dd722dc6089ed58addd5f3c70f9f3f154dc7d0e851d`
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
# Wed, 06 Jun 2018 17:39:01 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 17:39:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 17:39:44 GMT
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
	-	`sha256:8f5f10c724e16aaba35e5ed25c9a00a66b33f0cebe33680aafa50a0d8cb5d219`  
		Last Modified: Wed, 06 Jun 2018 17:43:16 GMT  
		Size: 3.8 MB (3836442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4` - linux; 386

```console
$ docker pull elixir@sha256:ec260f572945c4dcdab94710e0d90eeabcad62e4816a3075b560cb9698e592db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.3 MB (401252214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640b6bf6ee7b496b53503ac0a00b677bf445731fce305fe9632116d306079db3`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:42:24 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 11:54:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:54:32 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:54:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:54:37 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:55:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 16:00:39 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:01:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:01:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f963b082be630cf0174aab7da63699d9487e57b28daa553fbf14228d71b2316`  
		Last Modified: Wed, 27 Jun 2018 12:47:50 GMT  
		Size: 140.3 MB (140344376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba1751a20ca96dff01fe4fb2bbaab93e13df3616959e5006b4478348b885ec`  
		Last Modified: Wed, 27 Jun 2018 12:47:14 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958ca7aa10ae1798fec7d18d0c3c5c710b9ddefe641ad7cc20d4da6e5a38eeed`  
		Last Modified: Wed, 27 Jun 2018 12:47:15 GMT  
		Size: 3.4 MB (3393655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c14608d010f800dfabfb60e19fc10ea76dead819f58a25ae3f69b286d611847`  
		Last Modified: Wed, 27 Jun 2018 16:08:19 GMT  
		Size: 3.8 MB (3836493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4` - linux; s390x

```console
$ docker pull elixir@sha256:167ad24b056318f47023348908a2d77050f886fae1a4e1258de1f44e6b13808f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.0 MB (384990289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57ecf8e98ef45cf0e35d419c8f40cf666acd2414046409434aca4911d3a30cd`
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
# Wed, 06 Jun 2018 12:25:55 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:26:08 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:08 GMT
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
	-	`sha256:4bee5444249b44e416fb2dc8be155b4cbd737914a3336405bdd79218d0bfc291`  
		Last Modified: Wed, 06 Jun 2018 12:30:07 GMT  
		Size: 3.8 MB (3834323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3.4-slim`

```console
$ docker pull elixir@sha256:6b869f0364fe28f58c6ba5a1f1816cb1634ce8c88ab69103d24f836c339a2804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.3.4-slim` - linux; amd64

```console
$ docker pull elixir@sha256:aba4865fd61c6f5049ebbb2c4cae6358dfc4e7745358f6f77803dd302709c1c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221535504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a170e2aef5336e1717e3801c99d955f9c7c15af02286382601279ff70d278dbd`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:10:35 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:18:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:18:40 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:00:31 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 11:01:11 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:01:11 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e7724049b48cce7ccf682c77d1ddcfbb8619dcedca11d5320db5994cfafbf`  
		Last Modified: Wed, 27 Jun 2018 08:54:12 GMT  
		Size: 163.3 MB (163300499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6eee526233c8695b91eb7254425b6c16576350f311c207e80156fe0ed4c025`  
		Last Modified: Wed, 27 Jun 2018 11:06:38 GMT  
		Size: 4.0 MB (3982970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f4c93b9a5376d889b413210373ca880e0e0062b6713e2931d73d4a9641988545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208407772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a783af544c98e26e582d56d436fe88d1dd80774e7173daf3846a4097738385e7`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Fri, 11 May 2018 12:09:02 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:18:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:18:05 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:40:11 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Fri, 11 May 2018 12:40:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:40:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa1a8eb7dee6481c9fdfc5083f15d0c8d7af2a2cee55563d48180d931da0fa`  
		Last Modified: Fri, 11 May 2018 12:20:35 GMT  
		Size: 154.2 MB (154229390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3755c79e82208e45a84cf1dd8e0df62ce6b43e1d2e80e0fe2b8590f74f66c137`  
		Last Modified: Fri, 11 May 2018 12:42:25 GMT  
		Size: 4.0 MB (3982685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:888f01ff652fa242c8aa25e59bfd2fd714db9b69f937b08f1c82dd4d8c2b784c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214191498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025a225f386af38dcd2e73711b84d04e4838831d313cfde81b4fd9628737c7c7`
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
# Fri, 11 May 2018 10:11:12 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Fri, 11 May 2018 10:11:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 10:11:59 GMT
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
	-	`sha256:fe7060bf0a3e5c8e293797994a7e871ed911e5046843cd12ba7ef248d5fc2f8f`  
		Last Modified: Fri, 11 May 2018 10:13:33 GMT  
		Size: 4.0 MB (3982913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4-slim` - linux; 386

```console
$ docker pull elixir@sha256:9062e2c3b9a874e9186d70975540477af4436a53b13a60906a8beaea8ec2c525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.6 MB (222633057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e031f23792b494ff8f614c840bddefc8f7315a84d61d77d7fcd7ccc826b1f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:55:25 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 12:05:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:05:51 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 16:01:36 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:02:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:02:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4db32b90f15da3cf4f7853df5ea4e59e8ac1b2ffac9175b7b21bbb369ec22b`  
		Last Modified: Wed, 27 Jun 2018 12:49:25 GMT  
		Size: 164.2 MB (164166437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e855ee34da86889027a18fb8e790100d7d7aa64fca871088a2b80dfec32b5a`  
		Last Modified: Wed, 27 Jun 2018 16:08:52 GMT  
		Size: 4.0 MB (3982757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3.4-slim` - linux; s390x

```console
$ docker pull elixir@sha256:c825fd639facfe515f6722ab7447c5afd048c3d35ced9baf454069b5f00a6a3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222655807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02057b179257f313e02147fbf2219c803b14db20c9c60ab20a7f545fa15dd954`
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
# Wed, 06 Jun 2018 12:26:18 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:26:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:36 GMT
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
	-	`sha256:63294e22ac1e8af10a1e2f7cf4477865d512b321d24814a93982953e0b97c8ff`  
		Last Modified: Wed, 06 Jun 2018 12:30:27 GMT  
		Size: 4.0 MB (3981922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3-slim`

```console
$ docker pull elixir@sha256:6b869f0364fe28f58c6ba5a1f1816cb1634ce8c88ab69103d24f836c339a2804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `elixir:1.3-slim` - linux; amd64

```console
$ docker pull elixir@sha256:aba4865fd61c6f5049ebbb2c4cae6358dfc4e7745358f6f77803dd302709c1c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221535504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a170e2aef5336e1717e3801c99d955f9c7c15af02286382601279ff70d278dbd`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:10:35 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:18:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:18:40 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:00:31 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 11:01:11 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:01:11 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e7724049b48cce7ccf682c77d1ddcfbb8619dcedca11d5320db5994cfafbf`  
		Last Modified: Wed, 27 Jun 2018 08:54:12 GMT  
		Size: 163.3 MB (163300499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6eee526233c8695b91eb7254425b6c16576350f311c207e80156fe0ed4c025`  
		Last Modified: Wed, 27 Jun 2018 11:06:38 GMT  
		Size: 4.0 MB (3982970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f4c93b9a5376d889b413210373ca880e0e0062b6713e2931d73d4a9641988545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208407772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a783af544c98e26e582d56d436fe88d1dd80774e7173daf3846a4097738385e7`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Fri, 11 May 2018 12:09:02 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:18:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:18:05 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:40:11 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Fri, 11 May 2018 12:40:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:40:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa1a8eb7dee6481c9fdfc5083f15d0c8d7af2a2cee55563d48180d931da0fa`  
		Last Modified: Fri, 11 May 2018 12:20:35 GMT  
		Size: 154.2 MB (154229390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3755c79e82208e45a84cf1dd8e0df62ce6b43e1d2e80e0fe2b8590f74f66c137`  
		Last Modified: Fri, 11 May 2018 12:42:25 GMT  
		Size: 4.0 MB (3982685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:888f01ff652fa242c8aa25e59bfd2fd714db9b69f937b08f1c82dd4d8c2b784c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214191498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025a225f386af38dcd2e73711b84d04e4838831d313cfde81b4fd9628737c7c7`
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
# Fri, 11 May 2018 10:11:12 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Fri, 11 May 2018 10:11:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 10:11:59 GMT
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
	-	`sha256:fe7060bf0a3e5c8e293797994a7e871ed911e5046843cd12ba7ef248d5fc2f8f`  
		Last Modified: Fri, 11 May 2018 10:13:33 GMT  
		Size: 4.0 MB (3982913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3-slim` - linux; 386

```console
$ docker pull elixir@sha256:9062e2c3b9a874e9186d70975540477af4436a53b13a60906a8beaea8ec2c525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.6 MB (222633057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e031f23792b494ff8f614c840bddefc8f7315a84d61d77d7fcd7ccc826b1f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:55:25 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 12:05:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:05:51 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 16:01:36 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:02:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:02:48 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4db32b90f15da3cf4f7853df5ea4e59e8ac1b2ffac9175b7b21bbb369ec22b`  
		Last Modified: Wed, 27 Jun 2018 12:49:25 GMT  
		Size: 164.2 MB (164166437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e855ee34da86889027a18fb8e790100d7d7aa64fca871088a2b80dfec32b5a`  
		Last Modified: Wed, 27 Jun 2018 16:08:52 GMT  
		Size: 4.0 MB (3982757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.3-slim` - linux; s390x

```console
$ docker pull elixir@sha256:c825fd639facfe515f6722ab7447c5afd048c3d35ced9baf454069b5f00a6a3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222655807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02057b179257f313e02147fbf2219c803b14db20c9c60ab20a7f545fa15dd954`
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
# Wed, 06 Jun 2018 12:26:18 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:26:36 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:36 GMT
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
	-	`sha256:63294e22ac1e8af10a1e2f7cf4477865d512b321d24814a93982953e0b97c8ff`  
		Last Modified: Wed, 06 Jun 2018 12:30:27 GMT  
		Size: 4.0 MB (3981922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4`

```console
$ docker pull elixir@sha256:3ebd5887ef9b4e3c21bd3addc5da4bebcfa447fea9ed2b89f356a82e1ea1b843
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
$ docker pull elixir@sha256:6d3de324080b801d88a1027890bfbeb24b16cbb85cb67250435a3787dadf893b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.4 MB (398441018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65e3c4af8188f878312da0b296b3620bddc16b26c0dc848b027a3ed60ccadcb`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:01:02 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:10:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:10:01 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:10:01 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:10:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:10:05 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:10:25 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:57:42 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:58:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1291661b257aaa40c575dcede414ed705fc7f4537a2348e333c88edf25f5515d`  
		Last Modified: Wed, 27 Jun 2018 08:52:52 GMT  
		Size: 144.6 MB (144566357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0df1e11ace24776c7c154ed2897d81b0fe91e59d3e314cc50b7ac479a1d16aa`  
		Last Modified: Wed, 27 Jun 2018 08:52:33 GMT  
		Size: 199.2 KB (199226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50508a80fc424786e6bf5cd225afc53c9fdcaf994e691b506961a8cd57d56ef1`  
		Last Modified: Wed, 27 Jun 2018 08:52:32 GMT  
		Size: 3.4 MB (3393231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c626b8ae4b5a8bb5b347bd8b9127cec0e7ca9f91cd4e8beefe6176ca9ba897`  
		Last Modified: Wed, 27 Jun 2018 11:05:23 GMT  
		Size: 4.1 MB (4054253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4` - linux; arm variant v7

```console
$ docker pull elixir@sha256:9d6b123d727aba1979cc7cd114058e867688bc4c54c92daee7418d407fbb27f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (365951820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d16a993272d4bd57caf2d0e8dbc857104f4ac2579c3d4f04a26418df6e824`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:07:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:08:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:57:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:07:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:07:57 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:07:58 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 12:08:02 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:14:19 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:14:56 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:42:43 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:43:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:43:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0195f0b71282f9e483da45354cbd4936eb181ab7c78e1b2d06e1a66dfc9314`  
		Last Modified: Sat, 05 May 2018 12:31:38 GMT  
		Size: 16.8 MB (16762537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea25efde81f7bcedccd78742242186f3b31c8ec39d145509bc5509a57c905fb`  
		Last Modified: Sat, 05 May 2018 12:32:13 GMT  
		Size: 39.7 MB (39727473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d564edb58568a4386627b4e93eebaeaf6ccfeb8bb27cf70f8f5a8dad65bcd89`  
		Last Modified: Sat, 05 May 2018 12:33:06 GMT  
		Size: 114.1 MB (114067540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7b2322908c28f691e7886076d2a53629a74ebde843ac7d45191cdd3abbfed`  
		Last Modified: Fri, 11 May 2018 12:19:08 GMT  
		Size: 137.6 MB (137615032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7dbc9ddea5bccf7d1401965a4d777033801c7d667fc9e7d8623294afb1a03f`  
		Last Modified: Fri, 11 May 2018 12:18:42 GMT  
		Size: 199.2 KB (199236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978f82d3cf73a0732bbf9329449cdf3c93e1e8494b2ab3a0630d16ded2c7ce7`  
		Last Modified: Wed, 06 Jun 2018 12:19:56 GMT  
		Size: 3.3 MB (3331321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435a86e08f1d25345a68bd04fd95fde411c68cd1f4eac708bfe413ddd7a7bbcd`  
		Last Modified: Wed, 06 Jun 2018 12:47:56 GMT  
		Size: 4.1 MB (4052984 bytes)  
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
$ docker pull elixir@sha256:6de788640240d1d2165a7822c83597cf5339751b6bcb0df02b4c335b0cd19720
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401469480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab0999a0b78a8d6f137f457fd721c5f6453179b1dfbc3a5817730c5d5a4583f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:42:24 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 11:54:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:54:32 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:54:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:54:37 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:55:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:57:40 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:58:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:58:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f963b082be630cf0174aab7da63699d9487e57b28daa553fbf14228d71b2316`  
		Last Modified: Wed, 27 Jun 2018 12:47:50 GMT  
		Size: 140.3 MB (140344376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba1751a20ca96dff01fe4fb2bbaab93e13df3616959e5006b4478348b885ec`  
		Last Modified: Wed, 27 Jun 2018 12:47:14 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958ca7aa10ae1798fec7d18d0c3c5c710b9ddefe641ad7cc20d4da6e5a38eeed`  
		Last Modified: Wed, 27 Jun 2018 12:47:15 GMT  
		Size: 3.4 MB (3393655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046edce60d7b6862fe9ac6f37d2fde665697bf9b52fc344602131ebaea401119`  
		Last Modified: Wed, 27 Jun 2018 16:07:09 GMT  
		Size: 4.1 MB (4053759 bytes)  
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
$ docker pull elixir@sha256:3ebd5887ef9b4e3c21bd3addc5da4bebcfa447fea9ed2b89f356a82e1ea1b843
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
$ docker pull elixir@sha256:6d3de324080b801d88a1027890bfbeb24b16cbb85cb67250435a3787dadf893b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.4 MB (398441018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65e3c4af8188f878312da0b296b3620bddc16b26c0dc848b027a3ed60ccadcb`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:10:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:13:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:01:02 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:10:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:10:01 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:10:01 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:10:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:10:05 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:10:25 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:57:42 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:58:13 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:58:13 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece825d3308bbf98f708d95475ccd880497a1e2979ff4ef2534d49049a18488f`  
		Last Modified: Tue, 26 Jun 2018 22:25:06 GMT  
		Size: 17.6 MB (17585269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06854774e2f35e4763103a446112c67322913a6177bea69eb49663e0166e6d6d`  
		Last Modified: Tue, 26 Jun 2018 22:25:45 GMT  
		Size: 43.3 MB (43299742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db43b9b8da254cebc77bf871006df01219e195b9853616b9f708f124a00f3a`  
		Last Modified: Tue, 26 Jun 2018 22:26:55 GMT  
		Size: 131.1 MB (131090905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1291661b257aaa40c575dcede414ed705fc7f4537a2348e333c88edf25f5515d`  
		Last Modified: Wed, 27 Jun 2018 08:52:52 GMT  
		Size: 144.6 MB (144566357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0df1e11ace24776c7c154ed2897d81b0fe91e59d3e314cc50b7ac479a1d16aa`  
		Last Modified: Wed, 27 Jun 2018 08:52:33 GMT  
		Size: 199.2 KB (199226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50508a80fc424786e6bf5cd225afc53c9fdcaf994e691b506961a8cd57d56ef1`  
		Last Modified: Wed, 27 Jun 2018 08:52:32 GMT  
		Size: 3.4 MB (3393231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c626b8ae4b5a8bb5b347bd8b9127cec0e7ca9f91cd4e8beefe6176ca9ba897`  
		Last Modified: Wed, 27 Jun 2018 11:05:23 GMT  
		Size: 4.1 MB (4054253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5` - linux; arm variant v7

```console
$ docker pull elixir@sha256:9d6b123d727aba1979cc7cd114058e867688bc4c54c92daee7418d407fbb27f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (365951820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208d16a993272d4bd57caf2d0e8dbc857104f4ac2579c3d4f04a26418df6e824`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:07:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:08:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:57:44 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:07:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:07:57 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:07:58 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 11 May 2018 12:08:02 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 06 Jun 2018 12:14:19 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 06 Jun 2018 12:14:56 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 06 Jun 2018 12:42:43 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 06 Jun 2018 12:43:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:43:22 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0195f0b71282f9e483da45354cbd4936eb181ab7c78e1b2d06e1a66dfc9314`  
		Last Modified: Sat, 05 May 2018 12:31:38 GMT  
		Size: 16.8 MB (16762537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea25efde81f7bcedccd78742242186f3b31c8ec39d145509bc5509a57c905fb`  
		Last Modified: Sat, 05 May 2018 12:32:13 GMT  
		Size: 39.7 MB (39727473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d564edb58568a4386627b4e93eebaeaf6ccfeb8bb27cf70f8f5a8dad65bcd89`  
		Last Modified: Sat, 05 May 2018 12:33:06 GMT  
		Size: 114.1 MB (114067540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7b2322908c28f691e7886076d2a53629a74ebde843ac7d45191cdd3abbfed`  
		Last Modified: Fri, 11 May 2018 12:19:08 GMT  
		Size: 137.6 MB (137615032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7dbc9ddea5bccf7d1401965a4d777033801c7d667fc9e7d8623294afb1a03f`  
		Last Modified: Fri, 11 May 2018 12:18:42 GMT  
		Size: 199.2 KB (199236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978f82d3cf73a0732bbf9329449cdf3c93e1e8494b2ab3a0630d16ded2c7ce7`  
		Last Modified: Wed, 06 Jun 2018 12:19:56 GMT  
		Size: 3.3 MB (3331321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435a86e08f1d25345a68bd04fd95fde411c68cd1f4eac708bfe413ddd7a7bbcd`  
		Last Modified: Wed, 06 Jun 2018 12:47:56 GMT  
		Size: 4.1 MB (4052984 bytes)  
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
$ docker pull elixir@sha256:6de788640240d1d2165a7822c83597cf5339751b6bcb0df02b4c335b0cd19720
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401469480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab0999a0b78a8d6f137f457fd721c5f6453179b1dfbc3a5817730c5d5a4583f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:36:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:37:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:42:24 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 11:54:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:54:32 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:54:37 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:54:37 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:55:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:57:40 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:58:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:58:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7b03c37b52ffd35c8f2d79cffc57130da8d386955cc12ba8c21a187c4fbf`  
		Last Modified: Wed, 27 Jun 2018 11:48:50 GMT  
		Size: 19.9 MB (19880956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4483b5c21761acc2d8af0c32253db028b7bf59fce0beb0629de69d8663edad44`  
		Last Modified: Wed, 27 Jun 2018 11:49:21 GMT  
		Size: 43.9 MB (43940305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42574455704e0bcf1337b2f02ca6cb792e3b8fa44272e4edc3e912173fc019d7`  
		Last Modified: Wed, 27 Jun 2018 11:50:05 GMT  
		Size: 135.2 MB (135173331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f963b082be630cf0174aab7da63699d9487e57b28daa553fbf14228d71b2316`  
		Last Modified: Wed, 27 Jun 2018 12:47:50 GMT  
		Size: 140.3 MB (140344376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba1751a20ca96dff01fe4fb2bbaab93e13df3616959e5006b4478348b885ec`  
		Last Modified: Wed, 27 Jun 2018 12:47:14 GMT  
		Size: 199.2 KB (199235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958ca7aa10ae1798fec7d18d0c3c5c710b9ddefe641ad7cc20d4da6e5a38eeed`  
		Last Modified: Wed, 27 Jun 2018 12:47:15 GMT  
		Size: 3.4 MB (3393655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046edce60d7b6862fe9ac6f37d2fde665697bf9b52fc344602131ebaea401119`  
		Last Modified: Wed, 27 Jun 2018 16:07:09 GMT  
		Size: 4.1 MB (4053759 bytes)  
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
$ docker pull elixir@sha256:93460c5a7af8dcf78a5a564e55c369ff3b2f67829ca72782c450a209ca8e7394
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
$ docker pull elixir@sha256:d2bdcc34e1f91cc4d6e77c32962243b97a601c9dff2269f135066e3e5019b591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221753753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fc5acb4ce91e13e0420695f3060bcb9a031d9b2d2dd1419525b25cf9c5eebc`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:10:35 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:18:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:18:40 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:58:21 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:59:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e7724049b48cce7ccf682c77d1ddcfbb8619dcedca11d5320db5994cfafbf`  
		Last Modified: Wed, 27 Jun 2018 08:54:12 GMT  
		Size: 163.3 MB (163300499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ba31d369cccb68f812e9f1acfd263f676846beaadda33003ef88b8b6e8546`  
		Last Modified: Wed, 27 Jun 2018 11:05:45 GMT  
		Size: 4.2 MB (4201219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4.5-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:26ba404789c842779180a5790c3a6e2c45633744e4c2e7276dd69df96fe6697a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208625918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b195c62dd68a92dbc8fccdebbe30656232755535534adfa4ecadcecc0b41b070`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Fri, 11 May 2018 12:09:02 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:18:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:18:05 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:37:53 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 11 May 2018 12:38:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:38:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa1a8eb7dee6481c9fdfc5083f15d0c8d7af2a2cee55563d48180d931da0fa`  
		Last Modified: Fri, 11 May 2018 12:20:35 GMT  
		Size: 154.2 MB (154229390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401b3d3cf9b8b98c456883c9320d0fe4416e655b0ed2b2d94bd3d5f665f1a2bd`  
		Last Modified: Fri, 11 May 2018 12:41:38 GMT  
		Size: 4.2 MB (4200831 bytes)  
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
$ docker pull elixir@sha256:48f90ced2993bf7ed33266e6e24fe0b67301965ca217cf777edf4b2c7a056ce9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222851287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90144bcb10ca37f2679d70132d47168b9ceb1027be3ed0f6b030576ea81cb895`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:55:25 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 12:05:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:05:51 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:59:12 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:00:26 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:00:26 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4db32b90f15da3cf4f7853df5ea4e59e8ac1b2ffac9175b7b21bbb369ec22b`  
		Last Modified: Wed, 27 Jun 2018 12:49:25 GMT  
		Size: 164.2 MB (164166437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a7ae956be14608949d0e41e53bdc4a30b676b1514f03f5ee58fa7a5b82a86`  
		Last Modified: Wed, 27 Jun 2018 16:07:49 GMT  
		Size: 4.2 MB (4200987 bytes)  
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
$ docker pull elixir@sha256:93460c5a7af8dcf78a5a564e55c369ff3b2f67829ca72782c450a209ca8e7394
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
$ docker pull elixir@sha256:d2bdcc34e1f91cc4d6e77c32962243b97a601c9dff2269f135066e3e5019b591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221753753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fc5acb4ce91e13e0420695f3060bcb9a031d9b2d2dd1419525b25cf9c5eebc`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:10:35 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 08:18:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:18:40 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:58:21 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:59:03 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:04 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e7724049b48cce7ccf682c77d1ddcfbb8619dcedca11d5320db5994cfafbf`  
		Last Modified: Wed, 27 Jun 2018 08:54:12 GMT  
		Size: 163.3 MB (163300499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366ba31d369cccb68f812e9f1acfd263f676846beaadda33003ef88b8b6e8546`  
		Last Modified: Wed, 27 Jun 2018 11:05:45 GMT  
		Size: 4.2 MB (4201219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.4-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:26ba404789c842779180a5790c3a6e2c45633744e4c2e7276dd69df96fe6697a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208625918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b195c62dd68a92dbc8fccdebbe30656232755535534adfa4ecadcecc0b41b070`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Fri, 11 May 2018 12:09:02 GMT
ENV OTP_VERSION=19.3.6.9
# Fri, 11 May 2018 12:18:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 11 May 2018 12:18:05 GMT
CMD ["erl"]
# Fri, 11 May 2018 12:37:53 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Fri, 11 May 2018 12:38:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:38:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa1a8eb7dee6481c9fdfc5083f15d0c8d7af2a2cee55563d48180d931da0fa`  
		Last Modified: Fri, 11 May 2018 12:20:35 GMT  
		Size: 154.2 MB (154229390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401b3d3cf9b8b98c456883c9320d0fe4416e655b0ed2b2d94bd3d5f665f1a2bd`  
		Last Modified: Fri, 11 May 2018 12:41:38 GMT  
		Size: 4.2 MB (4200831 bytes)  
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
$ docker pull elixir@sha256:48f90ced2993bf7ed33266e6e24fe0b67301965ca217cf777edf4b2c7a056ce9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222851287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90144bcb10ca37f2679d70132d47168b9ceb1027be3ed0f6b030576ea81cb895`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:55:25 GMT
ENV OTP_VERSION=19.3.6.9
# Wed, 27 Jun 2018 12:05:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="ee43b4e085467c1205c42939ec99d421bd00d3bd2539aca2546e28690dfde1cc" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:05:51 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:59:12 GMT
ENV ELIXIR_VERSION=v1.4.5 LANG=C.UTF-8
# Wed, 27 Jun 2018 16:00:26 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="a740e634e3c68b1477e16d75a0fd400237a46c62ceb5d04551dbc46093a03f98"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:00:26 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4db32b90f15da3cf4f7853df5ea4e59e8ac1b2ffac9175b7b21bbb369ec22b`  
		Last Modified: Wed, 27 Jun 2018 12:49:25 GMT  
		Size: 164.2 MB (164166437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a7ae956be14608949d0e41e53bdc4a30b676b1514f03f5ee58fa7a5b82a86`  
		Last Modified: Wed, 27 Jun 2018 16:07:49 GMT  
		Size: 4.2 MB (4200987 bytes)  
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
$ docker pull elixir@sha256:7783d4f8845f2a9919820d6b07fd3d65b58ee84d18796d8871f38bcd4fb3cbd0
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
$ docker pull elixir@sha256:d983d23ed1b7c0a3954a2ae069c8a2278e43699b1064625786cb4f3dc54f19c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.0 MB (469954329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a5739c9fc8edaa5efbaa3094d361d038431394cf95f8bec805a822f49d9621`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:29:45 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 07:38:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:38:05 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 07:38:05 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 07:38:08 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 07:38:08 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 07:38:28 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:55:17 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:56:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 10:56:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46aa0ebd91e036f097137bfb0d7349259c1b5558fb28cd3d75e76470552002`  
		Last Modified: Wed, 27 Jun 2018 08:49:45 GMT  
		Size: 137.1 MB (137081158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f438800e2f9c2a55c8f49434b633c3a78be7589394a447b2b4ca0a5f719c179`  
		Last Modified: Wed, 27 Jun 2018 08:49:20 GMT  
		Size: 201.9 KB (201860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4074468665f4d162dfb0c4bb4d5b16d5d37e443cab26291ad1faba9267c3a1e4`  
		Last Modified: Wed, 27 Jun 2018 08:49:20 GMT  
		Size: 3.4 MB (3413888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d56ab45da84b3db32a2a22440c0e7f490004a02e5a2adae957c5db6df0a5a9`  
		Last Modified: Wed, 27 Jun 2018 11:03:51 GMT  
		Size: 5.6 MB (5602501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f8f0be0bd4194cb705296c34fbeec69c8926f9a52c9502239cd2dfd2c49edc19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.8 MB (434795359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffeda470bdcf3f1392c15ee24116ebd31c270073646b70312c0cc3fd6fe535f`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 11:57:26 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 12:06:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:06:43 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 12:06:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 15 Jun 2018 12:06:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 15 Jun 2018 12:06:48 GMT
ENV REBAR3_VERSION=3.5.3
# Fri, 15 Jun 2018 12:07:22 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 15 Jun 2018 12:34:46 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 12:35:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 15 Jun 2018 12:35:59 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db44b96c0d159f4219a92aaeaf0416ca0071d957996ca479d58a405048f03f`  
		Last Modified: Sat, 05 May 2018 12:37:37 GMT  
		Size: 194.0 MB (193956094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6d9f50b41a9110ca7d76252dfc9a547ca1bd9afe23ece3d198b68113b1fed1`  
		Last Modified: Fri, 15 Jun 2018 12:16:38 GMT  
		Size: 129.9 MB (129855416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef681612d54893cebfb11a3bc52edf8a354985ab04829d26d46b6fefc2605db4`  
		Last Modified: Fri, 15 Jun 2018 12:16:15 GMT  
		Size: 201.9 KB (201944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820832197f807d92a80c6b217d96f86e15c3f8a9ddb79f53083f3d1bb2cba79`  
		Last Modified: Fri, 15 Jun 2018 12:16:15 GMT  
		Size: 3.4 MB (3380649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da15a5f57887ac64bb5b6fa5674d45e2b9bf52c31e0cb66ff44fe8ed96e104e7`  
		Last Modified: Fri, 15 Jun 2018 12:37:40 GMT  
		Size: 5.6 MB (5601014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:993b27b6a0603a7cca03607ad2b9678483be4c633f743de779fe96d3ef29dcef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.9 MB (447915561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112d5f1b969c1dfe0fec0b3618056cd0a554907bf3dd93b5f75e8ce0bd407796`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 08:39:32 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 08:55:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 08:55:49 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 08:55:49 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 15 Jun 2018 08:55:56 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 15 Jun 2018 08:55:57 GMT
ENV REBAR3_VERSION=3.5.3
# Fri, 15 Jun 2018 08:56:54 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 15 Jun 2018 10:36:56 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:38:54 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 15 Jun 2018 10:38:55 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba449478ba3f55a2c9c207e134b0ac263ee8ab8eb5b06645dc53f7dfe80c81`  
		Last Modified: Sat, 05 May 2018 10:33:43 GMT  
		Size: 200.6 MB (200588134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c5c4e68e60e2dc67a3a1dab2d55b6d2601c47038eac813b72dceb91b322f4d`  
		Last Modified: Fri, 15 Jun 2018 09:20:01 GMT  
		Size: 133.2 MB (133237528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de286a51699d46d2705f49ae4ad1cb69929eccdc489d8e68b52d03fa18741ef3`  
		Last Modified: Fri, 15 Jun 2018 09:19:34 GMT  
		Size: 201.9 KB (201939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221529e97f66e76b0f424dc68304b3c352dc904c1602791b15f6db33c98f3f96`  
		Last Modified: Fri, 15 Jun 2018 09:19:35 GMT  
		Size: 3.4 MB (3379359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9130c4fcc347bbebd2757d69e0ef2eda4102dc53c5857ebabc074154951bcf`  
		Last Modified: Fri, 15 Jun 2018 10:42:39 GMT  
		Size: 5.6 MB (5602591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; 386

```console
$ docker pull elixir@sha256:94286ff3d7119d6d545a938f3833a2bd15e166ba8e94a7e2c8f9aef01743d4ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.3 MB (474293118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db580069cca0cb514983997c966dfb9259a1a62558a6eb8caacbf1383fe87ac0`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:18:58 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:27:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:27:23 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:27:23 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:27:27 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:27:28 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:27:58 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:55:20 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:56:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:56:38 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569247d47b6b7bf18d7c3f89d771f6be8af00046a921fcf438026e4321ae9a`  
		Last Modified: Wed, 27 Jun 2018 12:44:18 GMT  
		Size: 133.9 MB (133886917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8ddd3e6d66d79ce7ca923bd1a0a0eeef2bcaa759d647f23f0de34a49a23e4`  
		Last Modified: Wed, 27 Jun 2018 12:43:48 GMT  
		Size: 201.9 KB (201945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa1eb8374d0a37a7d6688b04799be9ab22d2049ab3b2b3235e162034e5d2de4`  
		Last Modified: Wed, 27 Jun 2018 12:43:49 GMT  
		Size: 3.4 MB (3414223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c252f4933e722e01d7d46313c17c34d57a982b4ee77eb301fdefa12e2fe9366`  
		Last Modified: Wed, 27 Jun 2018 16:05:23 GMT  
		Size: 5.6 MB (5600982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; ppc64le

```console
$ docker pull elixir@sha256:6334cb8418894f7b6e5f05e1d71bbdcf1ffa36fc90bf4121cabda7ee893a9b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 MB (462527626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541287fb2f87f763bda08da339c63890a4d53fe293e1339a1e1123eda44c93ae`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:55:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:47:46 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 08:59:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:59:25 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:59:26 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:59:32 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:59:33 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 09:00:14 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 14:21:52 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:23:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 14:23:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bed85717ae43798daf2dd19ea0720f961c621b792c35ef96f0a76bf9445326`  
		Last Modified: Sat, 05 May 2018 11:06:30 GMT  
		Size: 208.8 MB (208809785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00655bf8e4cc337a4fc81fdb81b88e3211173c5f1d1cecc3bd62624481456b`  
		Last Modified: Wed, 27 Jun 2018 09:24:48 GMT  
		Size: 134.6 MB (134614210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5fd4d5f199bf7e4055a90fc62ff82f30a819279e0a2f1411950fc45c5af39f`  
		Last Modified: Wed, 27 Jun 2018 09:24:22 GMT  
		Size: 202.0 KB (201952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e92584a177e1e58360e4f87151168c4c215d54f8a68d1d23643024b75537f9`  
		Last Modified: Wed, 27 Jun 2018 09:24:22 GMT  
		Size: 3.4 MB (3413967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8344a445812e571d411e490470731a043d7853d95f824c88d70f554e680cb8`  
		Last Modified: Wed, 27 Jun 2018 14:28:15 GMT  
		Size: 5.6 MB (5602663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5` - linux; s390x

```console
$ docker pull elixir@sha256:9845b79e0f608a3f82073e13095ec70db18ab46b784a7d88b810242faa64ef0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.7 MB (462730268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9daf0a4a4b4552154c1bcd11c150728e2a1209457d991f389bc343b979bc2303`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:35:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:38:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:59:54 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:07:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:07:18 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 12:07:18 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 12:07:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:07:21 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:07:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:04:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:05:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5ec4e23ee12af518c5fcad0035942a1f87ec2088506cee32142c1c65f61a`  
		Last Modified: Sat, 05 May 2018 12:48:28 GMT  
		Size: 10.3 MB (10300914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2eea9e27e3fa96462ebe8337d9b6cdcd7d157804dcc45590711a4a7408f64d`  
		Last Modified: Sat, 05 May 2018 12:48:26 GMT  
		Size: 4.4 MB (4366581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c5cebd8cef0143ddd69b694ac843162a0cc224c2db057b0d500f4e4adbb1f`  
		Last Modified: Sat, 05 May 2018 12:48:59 GMT  
		Size: 50.5 MB (50450723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12a7d9bf33b4756bf2185312ea56a7da4363751e56bd56c537fc039e1943f0a`  
		Last Modified: Sat, 05 May 2018 12:49:54 GMT  
		Size: 205.2 MB (205181057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222d126797b43067172e70b71307292a345bf794b5226984e6212ee9ebed65ad`  
		Last Modified: Wed, 27 Jun 2018 12:21:51 GMT  
		Size: 138.0 MB (138027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf0fb4b036cf41e0cfd830b4b992c4d7ddc617c8a3351bda1f3b676bee1b059`  
		Last Modified: Wed, 27 Jun 2018 12:21:37 GMT  
		Size: 201.9 KB (201948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835bc2f9f58b17f5661cdaadd9649f5e42f37ceca8bc44398518caccc071553b`  
		Last Modified: Wed, 27 Jun 2018 12:21:37 GMT  
		Size: 3.4 MB (3414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9446eb97cfdb83eb663a2a6f570fd80d0f9e1dea2d2616175c83b316d4ca0d48`  
		Last Modified: Wed, 27 Jun 2018 15:07:34 GMT  
		Size: 5.6 MB (5602408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3`

```console
$ docker pull elixir@sha256:7783d4f8845f2a9919820d6b07fd3d65b58ee84d18796d8871f38bcd4fb3cbd0
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
$ docker pull elixir@sha256:d983d23ed1b7c0a3954a2ae069c8a2278e43699b1064625786cb4f3dc54f19c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.0 MB (469954329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a5739c9fc8edaa5efbaa3094d361d038431394cf95f8bec805a822f49d9621`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:29:45 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 07:38:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:38:05 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 07:38:05 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 07:38:08 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 07:38:08 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 07:38:28 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:55:17 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:56:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 10:56:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e46aa0ebd91e036f097137bfb0d7349259c1b5558fb28cd3d75e76470552002`  
		Last Modified: Wed, 27 Jun 2018 08:49:45 GMT  
		Size: 137.1 MB (137081158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f438800e2f9c2a55c8f49434b633c3a78be7589394a447b2b4ca0a5f719c179`  
		Last Modified: Wed, 27 Jun 2018 08:49:20 GMT  
		Size: 201.9 KB (201860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4074468665f4d162dfb0c4bb4d5b16d5d37e443cab26291ad1faba9267c3a1e4`  
		Last Modified: Wed, 27 Jun 2018 08:49:20 GMT  
		Size: 3.4 MB (3413888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d56ab45da84b3db32a2a22440c0e7f490004a02e5a2adae957c5db6df0a5a9`  
		Last Modified: Wed, 27 Jun 2018 11:03:51 GMT  
		Size: 5.6 MB (5602501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; arm variant v7

```console
$ docker pull elixir@sha256:f8f0be0bd4194cb705296c34fbeec69c8926f9a52c9502239cd2dfd2c49edc19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.8 MB (434795359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffeda470bdcf3f1392c15ee24116ebd31c270073646b70312c0cc3fd6fe535f`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 11:57:26 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 12:06:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:06:43 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 12:06:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 15 Jun 2018 12:06:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 15 Jun 2018 12:06:48 GMT
ENV REBAR3_VERSION=3.5.3
# Fri, 15 Jun 2018 12:07:22 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 15 Jun 2018 12:34:46 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 12:35:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 15 Jun 2018 12:35:59 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db44b96c0d159f4219a92aaeaf0416ca0071d957996ca479d58a405048f03f`  
		Last Modified: Sat, 05 May 2018 12:37:37 GMT  
		Size: 194.0 MB (193956094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6d9f50b41a9110ca7d76252dfc9a547ca1bd9afe23ece3d198b68113b1fed1`  
		Last Modified: Fri, 15 Jun 2018 12:16:38 GMT  
		Size: 129.9 MB (129855416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef681612d54893cebfb11a3bc52edf8a354985ab04829d26d46b6fefc2605db4`  
		Last Modified: Fri, 15 Jun 2018 12:16:15 GMT  
		Size: 201.9 KB (201944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820832197f807d92a80c6b217d96f86e15c3f8a9ddb79f53083f3d1bb2cba79`  
		Last Modified: Fri, 15 Jun 2018 12:16:15 GMT  
		Size: 3.4 MB (3380649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da15a5f57887ac64bb5b6fa5674d45e2b9bf52c31e0cb66ff44fe8ed96e104e7`  
		Last Modified: Fri, 15 Jun 2018 12:37:40 GMT  
		Size: 5.6 MB (5601014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:993b27b6a0603a7cca03607ad2b9678483be4c633f743de779fe96d3ef29dcef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.9 MB (447915561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112d5f1b969c1dfe0fec0b3618056cd0a554907bf3dd93b5f75e8ce0bd407796`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 08:39:32 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 08:55:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 08:55:49 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 08:55:49 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 15 Jun 2018 08:55:56 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 15 Jun 2018 08:55:57 GMT
ENV REBAR3_VERSION=3.5.3
# Fri, 15 Jun 2018 08:56:54 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Fri, 15 Jun 2018 10:36:56 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:38:54 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Fri, 15 Jun 2018 10:38:55 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba449478ba3f55a2c9c207e134b0ac263ee8ab8eb5b06645dc53f7dfe80c81`  
		Last Modified: Sat, 05 May 2018 10:33:43 GMT  
		Size: 200.6 MB (200588134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c5c4e68e60e2dc67a3a1dab2d55b6d2601c47038eac813b72dceb91b322f4d`  
		Last Modified: Fri, 15 Jun 2018 09:20:01 GMT  
		Size: 133.2 MB (133237528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de286a51699d46d2705f49ae4ad1cb69929eccdc489d8e68b52d03fa18741ef3`  
		Last Modified: Fri, 15 Jun 2018 09:19:34 GMT  
		Size: 201.9 KB (201939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221529e97f66e76b0f424dc68304b3c352dc904c1602791b15f6db33c98f3f96`  
		Last Modified: Fri, 15 Jun 2018 09:19:35 GMT  
		Size: 3.4 MB (3379359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9130c4fcc347bbebd2757d69e0ef2eda4102dc53c5857ebabc074154951bcf`  
		Last Modified: Fri, 15 Jun 2018 10:42:39 GMT  
		Size: 5.6 MB (5602591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; 386

```console
$ docker pull elixir@sha256:94286ff3d7119d6d545a938f3833a2bd15e166ba8e94a7e2c8f9aef01743d4ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.3 MB (474293118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db580069cca0cb514983997c966dfb9259a1a62558a6eb8caacbf1383fe87ac0`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:18:58 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:27:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:27:23 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:27:23 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:27:27 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:27:28 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:27:58 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:55:20 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:56:38 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:56:38 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569247d47b6b7bf18d7c3f89d771f6be8af00046a921fcf438026e4321ae9a`  
		Last Modified: Wed, 27 Jun 2018 12:44:18 GMT  
		Size: 133.9 MB (133886917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8ddd3e6d66d79ce7ca923bd1a0a0eeef2bcaa759d647f23f0de34a49a23e4`  
		Last Modified: Wed, 27 Jun 2018 12:43:48 GMT  
		Size: 201.9 KB (201945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa1eb8374d0a37a7d6688b04799be9ab22d2049ab3b2b3235e162034e5d2de4`  
		Last Modified: Wed, 27 Jun 2018 12:43:49 GMT  
		Size: 3.4 MB (3414223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c252f4933e722e01d7d46313c17c34d57a982b4ee77eb301fdefa12e2fe9366`  
		Last Modified: Wed, 27 Jun 2018 16:05:23 GMT  
		Size: 5.6 MB (5600982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; ppc64le

```console
$ docker pull elixir@sha256:6334cb8418894f7b6e5f05e1d71bbdcf1ffa36fc90bf4121cabda7ee893a9b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 MB (462527626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541287fb2f87f763bda08da339c63890a4d53fe293e1339a1e1123eda44c93ae`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:55:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:47:46 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 08:59:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:59:25 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:59:26 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:59:32 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:59:33 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 09:00:14 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 14:21:52 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:23:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 14:23:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bed85717ae43798daf2dd19ea0720f961c621b792c35ef96f0a76bf9445326`  
		Last Modified: Sat, 05 May 2018 11:06:30 GMT  
		Size: 208.8 MB (208809785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f00655bf8e4cc337a4fc81fdb81b88e3211173c5f1d1cecc3bd62624481456b`  
		Last Modified: Wed, 27 Jun 2018 09:24:48 GMT  
		Size: 134.6 MB (134614210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5fd4d5f199bf7e4055a90fc62ff82f30a819279e0a2f1411950fc45c5af39f`  
		Last Modified: Wed, 27 Jun 2018 09:24:22 GMT  
		Size: 202.0 KB (201952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e92584a177e1e58360e4f87151168c4c215d54f8a68d1d23643024b75537f9`  
		Last Modified: Wed, 27 Jun 2018 09:24:22 GMT  
		Size: 3.4 MB (3413967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8344a445812e571d411e490470731a043d7853d95f824c88d70f554e680cb8`  
		Last Modified: Wed, 27 Jun 2018 14:28:15 GMT  
		Size: 5.6 MB (5602663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3` - linux; s390x

```console
$ docker pull elixir@sha256:9845b79e0f608a3f82073e13095ec70db18ab46b784a7d88b810242faa64ef0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.7 MB (462730268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9daf0a4a4b4552154c1bcd11c150728e2a1209457d991f389bc343b979bc2303`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:35:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:38:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:59:54 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:07:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:07:18 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 12:07:18 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 12:07:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:07:21 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:07:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:04:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="0fc6024b6027d87af9609b416448fd65d8927e0d05fc02410b35f4b9b9eb9629" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:05:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5ec4e23ee12af518c5fcad0035942a1f87ec2088506cee32142c1c65f61a`  
		Last Modified: Sat, 05 May 2018 12:48:28 GMT  
		Size: 10.3 MB (10300914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2eea9e27e3fa96462ebe8337d9b6cdcd7d157804dcc45590711a4a7408f64d`  
		Last Modified: Sat, 05 May 2018 12:48:26 GMT  
		Size: 4.4 MB (4366581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c5cebd8cef0143ddd69b694ac843162a0cc224c2db057b0d500f4e4adbb1f`  
		Last Modified: Sat, 05 May 2018 12:48:59 GMT  
		Size: 50.5 MB (50450723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12a7d9bf33b4756bf2185312ea56a7da4363751e56bd56c537fc039e1943f0a`  
		Last Modified: Sat, 05 May 2018 12:49:54 GMT  
		Size: 205.2 MB (205181057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222d126797b43067172e70b71307292a345bf794b5226984e6212ee9ebed65ad`  
		Last Modified: Wed, 27 Jun 2018 12:21:51 GMT  
		Size: 138.0 MB (138027001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf0fb4b036cf41e0cfd830b4b992c4d7ddc617c8a3351bda1f3b676bee1b059`  
		Last Modified: Wed, 27 Jun 2018 12:21:37 GMT  
		Size: 201.9 KB (201948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835bc2f9f58b17f5661cdaadd9649f5e42f37ceca8bc44398518caccc071553b`  
		Last Modified: Wed, 27 Jun 2018 12:21:37 GMT  
		Size: 3.4 MB (3414371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9446eb97cfdb83eb663a2a6f570fd80d0f9e1dea2d2616175c83b316d4ca0d48`  
		Last Modified: Wed, 27 Jun 2018 15:07:34 GMT  
		Size: 5.6 MB (5602408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3-alpine`

```console
$ docker pull elixir@sha256:8db2f528a8af2f4a137e7ae3250a4c1bfe466f10eb98e3af54a71d683f9591c0
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
$ docker pull elixir@sha256:9f999fd2636854d6c9aacb8479eb94759e5a7b352335d66b1bfb134d14a02953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50574337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc2f1daae2e935b2643c893db9dafb7307e0fa82f70b4fb6779b5da3745b4b0`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 07:54:15 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 08:00:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 08:00:41 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:57:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:57:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 10:57:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ddf7e50e571da5df4f6cc647943d2079c02660e7fc86c2dae8761abad8b680`  
		Last Modified: Wed, 27 Jun 2018 08:51:46 GMT  
		Size: 44.6 MB (44591304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01907abbd8e17a1dc23d69870b84f2a790b49d7a2d13548797f966d1d51964a`  
		Last Modified: Wed, 27 Jun 2018 11:04:54 GMT  
		Size: 3.9 MB (3917496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:afad1004674d9f9aebe7e98f02340206a8ed5c1c08ea61a4ec8971f8324a1ed4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47251139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e4a7886a680ff229a89949ce8cf433ff1bcdea5f369fb298bd38508747e50a`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 15 Jun 2018 09:08:15 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 09:18:15 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 15 Jun 2018 09:18:16 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 10:40:25 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:40:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 15 Jun 2018 10:40:32 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87b2713f01c1cb23d4372ab223ffdbbb72bf83fd9f0216c7aa27cac1228f50e`  
		Last Modified: Fri, 15 Jun 2018 09:21:32 GMT  
		Size: 41.3 MB (41345300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dadf588831491289066c121c3ce99f6febb7441b699f97643672a816c6a199`  
		Last Modified: Fri, 15 Jun 2018 10:43:17 GMT  
		Size: 3.9 MB (3916807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; 386

```console
$ docker pull elixir@sha256:b9f4a0be48fa4ca4c582a1b0a0442966acd1592b72fef667365076ab5cc1d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50490602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b285bd4f8600bf37d23908caaea34390fa6c0875f24c83f8f592555c307ffe2`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:35:09 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:42:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:42:06 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:57:27 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:57:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:57:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f6ad9ca8c9d30f40d31f93687dbb0765e4c5dc3830ce29e4dc4b094e7c10bf`  
		Last Modified: Wed, 27 Jun 2018 12:46:28 GMT  
		Size: 44.4 MB (44447131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06682dc49ba8a077006d13be7368f979280858406d5d0aa47d7048e4dbcf9e34`  
		Last Modified: Wed, 27 Jun 2018 16:06:34 GMT  
		Size: 3.9 MB (3917079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:b96d9f9d0c0ea76a4340961143b13083a6ebd6fa1fc9be5dde89284a2e5cbf54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47709970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960c81df915503c7d99ed7c0373adde5cb24b0be89c5fd642f01a6b5197482d6`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 09:11:27 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 09:19:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 09:19:41 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:26:06 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:26:21 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 14:26:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbb4ab6a8920220e504f9d85dff87333c4e4a329f441fa1810d8099f1d1525f`  
		Last Modified: Wed, 27 Jun 2018 09:26:21 GMT  
		Size: 41.7 MB (41710592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1669ee93c95089b4b2050411c4b0011a02388f83abb03b2a4584d7d6a9757c`  
		Last Modified: Wed, 27 Jun 2018 14:29:10 GMT  
		Size: 3.9 MB (3917733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:5ae9553c7a30244d5b9a0e154403f1462d4700540f280a80aebbc072a52afddc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47847032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28dc4f645525b80a1a02b9b0d64bd41b9715ab368f71ee963a4bcf1839f2092`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 12:12:42 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:17:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 12:17:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:05:43 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:05:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c488a6d5a25c9bf3aecb8b5ee6c931f648e7aad452469c7eedc3f933badef9`  
		Last Modified: Wed, 27 Jun 2018 12:22:45 GMT  
		Size: 41.7 MB (41744106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac823971c34b11eedf9efe86543bc29c127db8de86bffeeb91d1a382d64709c`  
		Last Modified: Wed, 27 Jun 2018 15:07:57 GMT  
		Size: 3.9 MB (3917520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5.3-slim`

```console
$ docker pull elixir@sha256:292faf4698b52566c2acacf59d67efdcc5f6b9bc8f188c80bfbd980bc1bbffca
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
$ docker pull elixir@sha256:722c5c3b83d9074f4fb970f1840ccf7d2268f24b10e1310a43b7745774eb663c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114694848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1efe6bc1d97790a6b1ecf86ad2ba6c0be1b254a9395c6abd1986a66cb57bac`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 07:47:29 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 07:54:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:54:03 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:57:01 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:57:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:57:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb6e2b64b5b58b569bedbbe863735b5461ca82ec39bbf0fd551d2f92bd6d6bc`  
		Last Modified: Wed, 27 Jun 2018 08:50:51 GMT  
		Size: 65.0 MB (65039124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b24a4041e5e79c95b3d1e7ea7b7415bb69a6c26d30436dae2d0cbceb64ae0a`  
		Last Modified: Wed, 27 Jun 2018 11:04:23 GMT  
		Size: 4.3 MB (4336500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:da63ddd33d8ec67d45d3e19dc0d478179b7d5d183d8ff8168a96afc8dcdf5df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108133313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae59c3b325fa279bd9ad33b79ff4b1a9ef458cc71c6592deeb3542474ea42031`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Fri, 15 Jun 2018 12:07:38 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 12:12:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:12:46 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 12:36:17 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 12:36:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:36:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45d81eb11a80a76076d58edd0d5e16f6bbd2573b7c45d355877de12e0bef1b5`  
		Last Modified: Fri, 15 Jun 2018 12:17:11 GMT  
		Size: 61.7 MB (61733213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f6b83b34c6b1e6f3f90b755d5d2074d26283e22bf3bd7d158c982e7b058081`  
		Last Modified: Fri, 15 Jun 2018 12:37:51 GMT  
		Size: 4.3 MB (4336363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:9b9fd62c04d9ae516ce9b7bb104c2a79ba4d2d2ba5739966a23b2df43ebaf4bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110404742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e92fd13d5b26ec87491f9ebb99ca16b1b7c31a5078cd7b0bd603d16ab46fbb`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Fri, 15 Jun 2018 08:57:13 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 09:08:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 09:08:02 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 10:39:16 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:40:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 10:40:09 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197b0a1c1d1a4745e70228d3b3bc1f906048388fc571dfeb9bfda7146ab867b1`  
		Last Modified: Fri, 15 Jun 2018 09:20:52 GMT  
		Size: 63.0 MB (62958866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75584ecf4057ecb9fadb32610b511716b504110dfd6fcaf611417319f4fba392`  
		Last Modified: Fri, 15 Jun 2018 10:43:00 GMT  
		Size: 4.3 MB (4336527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; 386

```console
$ docker pull elixir@sha256:db59ef54576e5a4cf8d83959f5f0e1849aa65c2d524d63c8efc3a943cf94f798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09786c27c5ce5740cb5e81db94340fdc1b30fb508140e98513adb012e98d401b`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:28:08 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:34:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:34:58 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:56:52 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:57:14 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:57:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3169c49881b163d46a348d27158858afdd95de17f54460bbe10fea84c0dd6b`  
		Last Modified: Wed, 27 Jun 2018 12:45:31 GMT  
		Size: 70.1 MB (70105492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa017ef07a35af151663cc074876d57d5fa3bd20e76f72732375014410907c3`  
		Last Modified: Wed, 27 Jun 2018 16:05:54 GMT  
		Size: 4.3 MB (4336539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:92996143bc901b3137c041d6aa6a9acc776998a9faa66345d83da890df9e4329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112005109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14181335a786f2ee1d328a3b959b6624c1d9dbf20852daf45beaff551bff7cf8`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:00:30 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 09:11:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:11:04 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:24:08 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:25:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5e1c120bad4b398ad2dcdda6b4690ae717ce513a170fbe940f758b125002f2`  
		Last Modified: Wed, 27 Jun 2018 09:25:39 GMT  
		Size: 62.1 MB (62080938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0504e92c50cf1ccc4427587419b003db8eb4c8624f8ef537b4a0b6d316fb89`  
		Last Modified: Wed, 27 Jun 2018 14:28:45 GMT  
		Size: 4.3 MB (4337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5.3-slim` - linux; s390x

```console
$ docker pull elixir@sha256:109c387b63b276b419c9cf6e4c0065f8397f2833ccdb1eaed02262a645940ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113195980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb03a48d75ab39b2845d751d76c5e3b9e9859ee91a8297ff60a111ef8a9308d`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:07:51 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:12:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:12:30 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:05:26 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:37 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:05:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdad80e27226ebb1a47595e48964089fd129fdbd03b6ba668b7ca3aed9f7e27a`  
		Last Modified: Wed, 27 Jun 2018 12:22:18 GMT  
		Size: 63.7 MB (63678876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934d054737bfc161bceb547517890f16e6ba0c74ec1f873dd15c864099ccf4c9`  
		Last Modified: Wed, 27 Jun 2018 15:07:47 GMT  
		Size: 4.3 MB (4335682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5-alpine`

```console
$ docker pull elixir@sha256:8db2f528a8af2f4a137e7ae3250a4c1bfe466f10eb98e3af54a71d683f9591c0
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
$ docker pull elixir@sha256:9f999fd2636854d6c9aacb8479eb94759e5a7b352335d66b1bfb134d14a02953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50574337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc2f1daae2e935b2643c893db9dafb7307e0fa82f70b4fb6779b5da3745b4b0`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 07:54:15 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 08:00:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 08:00:41 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:57:29 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:57:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 10:57:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ddf7e50e571da5df4f6cc647943d2079c02660e7fc86c2dae8761abad8b680`  
		Last Modified: Wed, 27 Jun 2018 08:51:46 GMT  
		Size: 44.6 MB (44591304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01907abbd8e17a1dc23d69870b84f2a790b49d7a2d13548797f966d1d51964a`  
		Last Modified: Wed, 27 Jun 2018 11:04:54 GMT  
		Size: 3.9 MB (3917496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:afad1004674d9f9aebe7e98f02340206a8ed5c1c08ea61a4ec8971f8324a1ed4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47251139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e4a7886a680ff229a89949ce8cf433ff1bcdea5f369fb298bd38508747e50a`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 15 Jun 2018 09:08:15 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 09:18:15 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 15 Jun 2018 09:18:16 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 10:40:25 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:40:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Fri, 15 Jun 2018 10:40:32 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87b2713f01c1cb23d4372ab223ffdbbb72bf83fd9f0216c7aa27cac1228f50e`  
		Last Modified: Fri, 15 Jun 2018 09:21:32 GMT  
		Size: 41.3 MB (41345300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dadf588831491289066c121c3ce99f6febb7441b699f97643672a816c6a199`  
		Last Modified: Fri, 15 Jun 2018 10:43:17 GMT  
		Size: 3.9 MB (3916807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; 386

```console
$ docker pull elixir@sha256:b9f4a0be48fa4ca4c582a1b0a0442966acd1592b72fef667365076ab5cc1d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50490602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b285bd4f8600bf37d23908caaea34390fa6c0875f24c83f8f592555c307ffe2`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:35:09 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:42:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:42:06 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:57:27 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:57:31 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:57:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f6ad9ca8c9d30f40d31f93687dbb0765e4c5dc3830ce29e4dc4b094e7c10bf`  
		Last Modified: Wed, 27 Jun 2018 12:46:28 GMT  
		Size: 44.4 MB (44447131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06682dc49ba8a077006d13be7368f979280858406d5d0aa47d7048e4dbcf9e34`  
		Last Modified: Wed, 27 Jun 2018 16:06:34 GMT  
		Size: 3.9 MB (3917079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:b96d9f9d0c0ea76a4340961143b13083a6ebd6fa1fc9be5dde89284a2e5cbf54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47709970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960c81df915503c7d99ed7c0373adde5cb24b0be89c5fd642f01a6b5197482d6`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 09:11:27 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 09:19:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 09:19:41 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:26:06 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:26:21 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 14:26:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbb4ab6a8920220e504f9d85dff87333c4e4a329f441fa1810d8099f1d1525f`  
		Last Modified: Wed, 27 Jun 2018 09:26:21 GMT  
		Size: 41.7 MB (41710592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1669ee93c95089b4b2050411c4b0011a02388f83abb03b2a4584d7d6a9757c`  
		Last Modified: Wed, 27 Jun 2018 14:29:10 GMT  
		Size: 3.9 MB (3917733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:5ae9553c7a30244d5b9a0e154403f1462d4700540f280a80aebbc072a52afddc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47847032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28dc4f645525b80a1a02b9b0d64bd41b9715ab368f71ee963a4bcf1839f2092`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 12:12:42 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:17:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 12:17:31 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:05:43 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:46 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:05:47 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c488a6d5a25c9bf3aecb8b5ee6c931f648e7aad452469c7eedc3f933badef9`  
		Last Modified: Wed, 27 Jun 2018 12:22:45 GMT  
		Size: 41.7 MB (41744106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac823971c34b11eedf9efe86543bc29c127db8de86bffeeb91d1a382d64709c`  
		Last Modified: Wed, 27 Jun 2018 15:07:57 GMT  
		Size: 3.9 MB (3917520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.5-slim`

```console
$ docker pull elixir@sha256:292faf4698b52566c2acacf59d67efdcc5f6b9bc8f188c80bfbd980bc1bbffca
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
$ docker pull elixir@sha256:722c5c3b83d9074f4fb970f1840ccf7d2268f24b10e1310a43b7745774eb663c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114694848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1efe6bc1d97790a6b1ecf86ad2ba6c0be1b254a9395c6abd1986a66cb57bac`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 07:47:29 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 07:54:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:54:03 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:57:01 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:57:20 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:57:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb6e2b64b5b58b569bedbbe863735b5461ca82ec39bbf0fd551d2f92bd6d6bc`  
		Last Modified: Wed, 27 Jun 2018 08:50:51 GMT  
		Size: 65.0 MB (65039124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b24a4041e5e79c95b3d1e7ea7b7415bb69a6c26d30436dae2d0cbceb64ae0a`  
		Last Modified: Wed, 27 Jun 2018 11:04:23 GMT  
		Size: 4.3 MB (4336500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:da63ddd33d8ec67d45d3e19dc0d478179b7d5d183d8ff8168a96afc8dcdf5df0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108133313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae59c3b325fa279bd9ad33b79ff4b1a9ef458cc71c6592deeb3542474ea42031`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Fri, 15 Jun 2018 12:07:38 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 12:12:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:12:46 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 12:36:17 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 12:36:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 12:36:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45d81eb11a80a76076d58edd0d5e16f6bbd2573b7c45d355877de12e0bef1b5`  
		Last Modified: Fri, 15 Jun 2018 12:17:11 GMT  
		Size: 61.7 MB (61733213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f6b83b34c6b1e6f3f90b755d5d2074d26283e22bf3bd7d158c982e7b058081`  
		Last Modified: Fri, 15 Jun 2018 12:37:51 GMT  
		Size: 4.3 MB (4336363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:9b9fd62c04d9ae516ce9b7bb104c2a79ba4d2d2ba5739966a23b2df43ebaf4bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110404742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e92fd13d5b26ec87491f9ebb99ca16b1b7c31a5078cd7b0bd603d16ab46fbb`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Fri, 15 Jun 2018 08:57:13 GMT
ENV OTP_VERSION=20.3.8
# Fri, 15 Jun 2018 09:08:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a7e59c531605fbd19ceac0568ae81c89ec690449e861da6e3598399f9c4b747f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 15 Jun 2018 09:08:02 GMT
CMD ["erl"]
# Fri, 15 Jun 2018 10:39:16 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Fri, 15 Jun 2018 10:40:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Jun 2018 10:40:09 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197b0a1c1d1a4745e70228d3b3bc1f906048388fc571dfeb9bfda7146ab867b1`  
		Last Modified: Fri, 15 Jun 2018 09:20:52 GMT  
		Size: 63.0 MB (62958866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75584ecf4057ecb9fadb32610b511716b504110dfd6fcaf611417319f4fba392`  
		Last Modified: Fri, 15 Jun 2018 10:43:00 GMT  
		Size: 4.3 MB (4336527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; 386

```console
$ docker pull elixir@sha256:db59ef54576e5a4cf8d83959f5f0e1849aa65c2d524d63c8efc3a943cf94f798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09786c27c5ce5740cb5e81db94340fdc1b30fb508140e98513adb012e98d401b`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:28:08 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 11:34:57 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:34:58 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:56:52 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:57:14 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:57:15 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3169c49881b163d46a348d27158858afdd95de17f54460bbe10fea84c0dd6b`  
		Last Modified: Wed, 27 Jun 2018 12:45:31 GMT  
		Size: 70.1 MB (70105492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa017ef07a35af151663cc074876d57d5fa3bd20e76f72732375014410907c3`  
		Last Modified: Wed, 27 Jun 2018 16:05:54 GMT  
		Size: 4.3 MB (4336539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:92996143bc901b3137c041d6aa6a9acc776998a9faa66345d83da890df9e4329
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112005109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14181335a786f2ee1d328a3b959b6624c1d9dbf20852daf45beaff551bff7cf8`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:00:30 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 09:11:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:11:04 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:24:08 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:25:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5e1c120bad4b398ad2dcdda6b4690ae717ce513a170fbe940f758b125002f2`  
		Last Modified: Wed, 27 Jun 2018 09:25:39 GMT  
		Size: 62.1 MB (62080938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0504e92c50cf1ccc4427587419b003db8eb4c8624f8ef537b4a0b6d316fb89`  
		Last Modified: Wed, 27 Jun 2018 14:28:45 GMT  
		Size: 4.3 MB (4337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.5-slim` - linux; s390x

```console
$ docker pull elixir@sha256:109c387b63b276b419c9cf6e4c0065f8397f2833ccdb1eaed02262a645940ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113195980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb03a48d75ab39b2845d751d76c5e3b9e9859ee91a8297ff60a111ef8a9308d`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:07:51 GMT
ENV OTP_VERSION=20.3.8.1
# Wed, 27 Jun 2018 12:12:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:12:30 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:05:26 GMT
ENV ELIXIR_VERSION=v1.5.3 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:05:37 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="70972b844c12bc1a3960136d628ab4f21ca87dd5539c544ebabe41d6c9239ba9" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:05:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdad80e27226ebb1a47595e48964089fd129fdbd03b6ba668b7ca3aed9f7e27a`  
		Last Modified: Wed, 27 Jun 2018 12:22:18 GMT  
		Size: 63.7 MB (63678876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934d054737bfc161bceb547517890f16e6ba0c74ec1f873dd15c864099ccf4c9`  
		Last Modified: Wed, 27 Jun 2018 15:07:47 GMT  
		Size: 4.3 MB (4335682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6`

```console
$ docker pull elixir@sha256:396973ef28bfb186f5cb55a6d44d87c9549e310f1004bf788d2321f2782880fa
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
$ docker pull elixir@sha256:aef61761cbddaad42b7bd3385f3a8d0e48952bbb11a81b3f7be927527d8afe98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.7 MB (466675972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc72e5a40ba99db8988b6a49abd33a9096538f6301b9a1df1b1e71473f74e83`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:57:24 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:06:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:06:21 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 07:06:21 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 07:06:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 07:06:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 07:06:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:52:47 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 10:54:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a5c6066d190e65885f09d404ed89f2c18c320bb58523a3985d9977ec742f2`  
		Last Modified: Wed, 27 Jun 2018 08:46:39 GMT  
		Size: 133.4 MB (133390161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02e3b0ff5397ec13d5e8da8c4c46d004d89b93309a39c65de7100306f2f3fc8`  
		Last Modified: Wed, 27 Jun 2018 08:46:20 GMT  
		Size: 201.4 KB (201368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c427631ce18c73b18aaa958a2e4b769241e29db76e112374df88170acfd8599e`  
		Last Modified: Wed, 27 Jun 2018 08:46:21 GMT  
		Size: 3.4 MB (3410275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa730dcd6e2e8f3f8630c21558502a69584a8b206e1b3ddbf99796bbef376409`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.0 MB (6019246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; arm variant v7

```console
$ docker pull elixir@sha256:a4f89d253de3d3386354440d7758ed014a76d4bddbec7ee8af154ea065c68f11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.5 MB (431464687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e79158fe986f1f51dc77eeb609d889af551e2686d68d02dfc7b28307048742`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 11:58:06 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:06:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:06:57 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 12:06:57 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 12:07:01 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 12:07:02 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 12:07:37 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 11:57:46 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:58:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 11:58:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db44b96c0d159f4219a92aaeaf0416ca0071d957996ca479d58a405048f03f`  
		Last Modified: Sat, 05 May 2018 12:37:37 GMT  
		Size: 194.0 MB (193956094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eabac711df975f373e51565d0178c4ab220888e13dfe7025e13207c48d3c085`  
		Last Modified: Wed, 20 Jun 2018 12:14:04 GMT  
		Size: 126.1 MB (126103587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a869ee902aa6d39bbe0c669d2289363d8be69e85731246f7287822509705b6e`  
		Last Modified: Wed, 20 Jun 2018 12:13:45 GMT  
		Size: 201.3 KB (201349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197e7885bdc1207d471198f600b15977d5525042c0a8ca4bcb697473439bf577`  
		Last Modified: Wed, 20 Jun 2018 12:13:42 GMT  
		Size: 3.4 MB (3387520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167abea71b322e6318b0655c07aac788a27ecee85238cd16f91b3b6dbf2e289b`  
		Last Modified: Tue, 26 Jun 2018 12:00:01 GMT  
		Size: 6.0 MB (6015895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:2c182b05536fccf4e344cad60d0447e8c6002ccafbb757916cfb00b9df96a87b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.6 MB (444592175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34793022d49fc5cb3ff72eab59fde1adb9a3fb523e862071cd7e02de307ef71a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:39:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 08:57:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:57:36 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 08:57:37 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 08:57:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 08:57:53 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 08:58:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 08:44:44 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:46:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 08:46:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba449478ba3f55a2c9c207e134b0ac263ee8ab8eb5b06645dc53f7dfe80c81`  
		Last Modified: Sat, 05 May 2018 10:33:43 GMT  
		Size: 200.6 MB (200588134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dc871747b21b1276b33f4896ff72443719699ffd2a3fd9ae9773b9d2eb84c`  
		Last Modified: Wed, 20 Jun 2018 09:23:18 GMT  
		Size: 129.5 MB (129490475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52a868be1b32ee6b7b5bec70976a5efba466b0aeea9d02d0faa03bbcb58cfaa`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 201.4 KB (201360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64db396d5f843525fbef79f982e1cd8ae74a715c7f5866cad2cbf0e93b168cd5`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 3.4 MB (3387252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d0cb095e527f4a223564fb924b09ce61498a25362efa6bba97be0f1a80237f`  
		Last Modified: Tue, 26 Jun 2018 08:49:11 GMT  
		Size: 6.0 MB (6018944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; 386

```console
$ docker pull elixir@sha256:e3236cda323a7133ca88487ea5a6bcc42822e36b13812a78b18c194c50ab0b17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.0 MB (470977557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2addee8d21c7863b5e24aa207367a3d09ecca2568424a2b797da5ec92df7ff`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:53:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:02:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:02:18 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:02:18 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:02:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:02:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:02:55 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:53:05 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:27 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:54:27 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a0d55d840cf58e5be5bbed7fd8b12815834f841f9c540fb03aad9b0915c51b`  
		Last Modified: Wed, 27 Jun 2018 12:40:50 GMT  
		Size: 130.2 MB (130160808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bb377bcebff09fe7ce9783bc89560482313a405124d026381efa2f7f397f9`  
		Last Modified: Wed, 27 Jun 2018 12:40:19 GMT  
		Size: 201.4 KB (201450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662da90e8e58a59bbbb868fd6f9b6ab24387660fffe161b427830c1c49487a67`  
		Last Modified: Wed, 27 Jun 2018 12:40:20 GMT  
		Size: 3.4 MB (3410454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df330bedddf8006b6197407f081b3b7dfa5345920b4a3a9532d9594c7812e139`  
		Last Modified: Wed, 27 Jun 2018 16:03:20 GMT  
		Size: 6.0 MB (6015794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; ppc64le

```console
$ docker pull elixir@sha256:d069929a9f2ac1fe3bd5f9261e9d32463cc248f54d6df74d518a3f72061a8d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459181528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10512448121735019edbadc60f43b9b316d555cdfdd30e56d7a77957ad18c675`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:55:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:16:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:27:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:27:45 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:27:52 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:27:58 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:28:03 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:28:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 14:17:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 14:19:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bed85717ae43798daf2dd19ea0720f961c621b792c35ef96f0a76bf9445326`  
		Last Modified: Sat, 05 May 2018 11:06:30 GMT  
		Size: 208.8 MB (208809785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bc4ecaaf47c00e609dfda46553b93fc3e9eaea29117813b8629227f37d9a0`  
		Last Modified: Wed, 27 Jun 2018 09:22:14 GMT  
		Size: 130.9 MB (130855438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44526841824d7e53e5182efe1875e0adf01d9bdefe47e56cf29617265c7f6ac9`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 201.5 KB (201463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889fe5717b83b9a8736c657252ea070f026e8c50878355f9e22cc81f941d592a`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 3.4 MB (3410356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ce6889610833ddb7eaa20769a26d98ea1584da779f343e5a5d9443b329b266`  
		Last Modified: Wed, 27 Jun 2018 14:26:46 GMT  
		Size: 6.0 MB (6019437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6` - linux; s390x

```console
$ docker pull elixir@sha256:684dcd0560f94beaa68c95e2b609b59b1b484c4b0c05e468b03031996f5be01e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.3 MB (459343891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d78852bdc14f861e84f7f6c3d2c9232d4f4604e982ae1a5a72309d691dc7bd8`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:35:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:38:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:41:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:48:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:48:50 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:48:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:48:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:48:53 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:49:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:03:06 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:03:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:03:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5ec4e23ee12af518c5fcad0035942a1f87ec2088506cee32142c1c65f61a`  
		Last Modified: Sat, 05 May 2018 12:48:28 GMT  
		Size: 10.3 MB (10300914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2eea9e27e3fa96462ebe8337d9b6cdcd7d157804dcc45590711a4a7408f64d`  
		Last Modified: Sat, 05 May 2018 12:48:26 GMT  
		Size: 4.4 MB (4366581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c5cebd8cef0143ddd69b694ac843162a0cc224c2db057b0d500f4e4adbb1f`  
		Last Modified: Sat, 05 May 2018 12:48:59 GMT  
		Size: 50.5 MB (50450723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12a7d9bf33b4756bf2185312ea56a7da4363751e56bd56c537fc039e1943f0a`  
		Last Modified: Sat, 05 May 2018 12:49:54 GMT  
		Size: 205.2 MB (205181057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83fc6bd1f4b5c08f5bd81b37b5db3ef68a9806fd49afe9b3b6d4e7a50e5a5f`  
		Last Modified: Wed, 27 Jun 2018 12:20:28 GMT  
		Size: 134.2 MB (134228337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365329188ff9562e36861a49cee5a5462bf0f630b6d1b9da23be4aed18fa3cce`  
		Last Modified: Wed, 27 Jun 2018 12:20:13 GMT  
		Size: 201.5 KB (201477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e478cf74cf3bc1bd585bae9d2db510efea25ef130740d5460c6ebed8569802eb`  
		Last Modified: Wed, 27 Jun 2018 12:20:14 GMT  
		Size: 3.4 MB (3410685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f87ca5681dd603f911fd3008924108d956c50b6b6aa14bb919065ef54cf586f`  
		Last Modified: Wed, 27 Jun 2018 15:06:52 GMT  
		Size: 6.0 MB (6018852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6`

```console
$ docker pull elixir@sha256:396973ef28bfb186f5cb55a6d44d87c9549e310f1004bf788d2321f2782880fa
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
$ docker pull elixir@sha256:aef61761cbddaad42b7bd3385f3a8d0e48952bbb11a81b3f7be927527d8afe98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.7 MB (466675972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc72e5a40ba99db8988b6a49abd33a9096538f6301b9a1df1b1e71473f74e83`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:57:24 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:06:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:06:21 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 07:06:21 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 07:06:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 07:06:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 07:06:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:52:47 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 10:54:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a5c6066d190e65885f09d404ed89f2c18c320bb58523a3985d9977ec742f2`  
		Last Modified: Wed, 27 Jun 2018 08:46:39 GMT  
		Size: 133.4 MB (133390161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02e3b0ff5397ec13d5e8da8c4c46d004d89b93309a39c65de7100306f2f3fc8`  
		Last Modified: Wed, 27 Jun 2018 08:46:20 GMT  
		Size: 201.4 KB (201368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c427631ce18c73b18aaa958a2e4b769241e29db76e112374df88170acfd8599e`  
		Last Modified: Wed, 27 Jun 2018 08:46:21 GMT  
		Size: 3.4 MB (3410275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa730dcd6e2e8f3f8630c21558502a69584a8b206e1b3ddbf99796bbef376409`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.0 MB (6019246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; arm variant v7

```console
$ docker pull elixir@sha256:a4f89d253de3d3386354440d7758ed014a76d4bddbec7ee8af154ea065c68f11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.5 MB (431464687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e79158fe986f1f51dc77eeb609d889af551e2686d68d02dfc7b28307048742`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 11:58:06 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:06:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:06:57 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 12:06:57 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 12:07:01 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 12:07:02 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 12:07:37 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 11:57:46 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:58:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 11:58:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db44b96c0d159f4219a92aaeaf0416ca0071d957996ca479d58a405048f03f`  
		Last Modified: Sat, 05 May 2018 12:37:37 GMT  
		Size: 194.0 MB (193956094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eabac711df975f373e51565d0178c4ab220888e13dfe7025e13207c48d3c085`  
		Last Modified: Wed, 20 Jun 2018 12:14:04 GMT  
		Size: 126.1 MB (126103587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a869ee902aa6d39bbe0c669d2289363d8be69e85731246f7287822509705b6e`  
		Last Modified: Wed, 20 Jun 2018 12:13:45 GMT  
		Size: 201.3 KB (201349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197e7885bdc1207d471198f600b15977d5525042c0a8ca4bcb697473439bf577`  
		Last Modified: Wed, 20 Jun 2018 12:13:42 GMT  
		Size: 3.4 MB (3387520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167abea71b322e6318b0655c07aac788a27ecee85238cd16f91b3b6dbf2e289b`  
		Last Modified: Tue, 26 Jun 2018 12:00:01 GMT  
		Size: 6.0 MB (6015895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:2c182b05536fccf4e344cad60d0447e8c6002ccafbb757916cfb00b9df96a87b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.6 MB (444592175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34793022d49fc5cb3ff72eab59fde1adb9a3fb523e862071cd7e02de307ef71a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:39:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 08:57:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:57:36 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 08:57:37 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 08:57:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 08:57:53 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 08:58:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 08:44:44 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:46:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 08:46:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba449478ba3f55a2c9c207e134b0ac263ee8ab8eb5b06645dc53f7dfe80c81`  
		Last Modified: Sat, 05 May 2018 10:33:43 GMT  
		Size: 200.6 MB (200588134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dc871747b21b1276b33f4896ff72443719699ffd2a3fd9ae9773b9d2eb84c`  
		Last Modified: Wed, 20 Jun 2018 09:23:18 GMT  
		Size: 129.5 MB (129490475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52a868be1b32ee6b7b5bec70976a5efba466b0aeea9d02d0faa03bbcb58cfaa`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 201.4 KB (201360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64db396d5f843525fbef79f982e1cd8ae74a715c7f5866cad2cbf0e93b168cd5`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 3.4 MB (3387252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d0cb095e527f4a223564fb924b09ce61498a25362efa6bba97be0f1a80237f`  
		Last Modified: Tue, 26 Jun 2018 08:49:11 GMT  
		Size: 6.0 MB (6018944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; 386

```console
$ docker pull elixir@sha256:e3236cda323a7133ca88487ea5a6bcc42822e36b13812a78b18c194c50ab0b17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.0 MB (470977557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2addee8d21c7863b5e24aa207367a3d09ecca2568424a2b797da5ec92df7ff`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:53:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:02:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:02:18 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:02:18 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:02:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:02:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:02:55 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:53:05 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:27 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:54:27 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a0d55d840cf58e5be5bbed7fd8b12815834f841f9c540fb03aad9b0915c51b`  
		Last Modified: Wed, 27 Jun 2018 12:40:50 GMT  
		Size: 130.2 MB (130160808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bb377bcebff09fe7ce9783bc89560482313a405124d026381efa2f7f397f9`  
		Last Modified: Wed, 27 Jun 2018 12:40:19 GMT  
		Size: 201.4 KB (201450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662da90e8e58a59bbbb868fd6f9b6ab24387660fffe161b427830c1c49487a67`  
		Last Modified: Wed, 27 Jun 2018 12:40:20 GMT  
		Size: 3.4 MB (3410454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df330bedddf8006b6197407f081b3b7dfa5345920b4a3a9532d9594c7812e139`  
		Last Modified: Wed, 27 Jun 2018 16:03:20 GMT  
		Size: 6.0 MB (6015794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; ppc64le

```console
$ docker pull elixir@sha256:d069929a9f2ac1fe3bd5f9261e9d32463cc248f54d6df74d518a3f72061a8d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459181528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10512448121735019edbadc60f43b9b316d555cdfdd30e56d7a77957ad18c675`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:55:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:16:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:27:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:27:45 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:27:52 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:27:58 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:28:03 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:28:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 14:17:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 14:19:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bed85717ae43798daf2dd19ea0720f961c621b792c35ef96f0a76bf9445326`  
		Last Modified: Sat, 05 May 2018 11:06:30 GMT  
		Size: 208.8 MB (208809785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bc4ecaaf47c00e609dfda46553b93fc3e9eaea29117813b8629227f37d9a0`  
		Last Modified: Wed, 27 Jun 2018 09:22:14 GMT  
		Size: 130.9 MB (130855438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44526841824d7e53e5182efe1875e0adf01d9bdefe47e56cf29617265c7f6ac9`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 201.5 KB (201463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889fe5717b83b9a8736c657252ea070f026e8c50878355f9e22cc81f941d592a`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 3.4 MB (3410356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ce6889610833ddb7eaa20769a26d98ea1584da779f343e5a5d9443b329b266`  
		Last Modified: Wed, 27 Jun 2018 14:26:46 GMT  
		Size: 6.0 MB (6019437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6` - linux; s390x

```console
$ docker pull elixir@sha256:684dcd0560f94beaa68c95e2b609b59b1b484c4b0c05e468b03031996f5be01e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.3 MB (459343891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d78852bdc14f861e84f7f6c3d2c9232d4f4604e982ae1a5a72309d691dc7bd8`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:35:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:38:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:41:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:48:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:48:50 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:48:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:48:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:48:53 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:49:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:03:06 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:03:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:03:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5ec4e23ee12af518c5fcad0035942a1f87ec2088506cee32142c1c65f61a`  
		Last Modified: Sat, 05 May 2018 12:48:28 GMT  
		Size: 10.3 MB (10300914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2eea9e27e3fa96462ebe8337d9b6cdcd7d157804dcc45590711a4a7408f64d`  
		Last Modified: Sat, 05 May 2018 12:48:26 GMT  
		Size: 4.4 MB (4366581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c5cebd8cef0143ddd69b694ac843162a0cc224c2db057b0d500f4e4adbb1f`  
		Last Modified: Sat, 05 May 2018 12:48:59 GMT  
		Size: 50.5 MB (50450723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12a7d9bf33b4756bf2185312ea56a7da4363751e56bd56c537fc039e1943f0a`  
		Last Modified: Sat, 05 May 2018 12:49:54 GMT  
		Size: 205.2 MB (205181057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83fc6bd1f4b5c08f5bd81b37b5db3ef68a9806fd49afe9b3b6d4e7a50e5a5f`  
		Last Modified: Wed, 27 Jun 2018 12:20:28 GMT  
		Size: 134.2 MB (134228337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365329188ff9562e36861a49cee5a5462bf0f630b6d1b9da23be4aed18fa3cce`  
		Last Modified: Wed, 27 Jun 2018 12:20:13 GMT  
		Size: 201.5 KB (201477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e478cf74cf3bc1bd585bae9d2db510efea25ef130740d5460c6ebed8569802eb`  
		Last Modified: Wed, 27 Jun 2018 12:20:14 GMT  
		Size: 3.4 MB (3410685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f87ca5681dd603f911fd3008924108d956c50b6b6aa14bb919065ef54cf586f`  
		Last Modified: Wed, 27 Jun 2018 15:06:52 GMT  
		Size: 6.0 MB (6018852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-alpine`

```console
$ docker pull elixir@sha256:82106c883b0f98037a11e119b2542d3bc321f2faf03e8e698f66f06f7eb19a83
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
$ docker pull elixir@sha256:c0a05d44cb462175421cbfe4c8aaf3df7dec9a7ef586766463e56b43c442661d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48420082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab086b49bf747afb5786e69a550b084c8e60a9a7a23d2b5b15d92ef39dba7763`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 07:22:57 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:29:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 07:29:34 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:55:01 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:55:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 10:55:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d530ef73bd8dfffab9ae77c3dfb8c691934054b1f88eeaa34e08f23bc25002`  
		Last Modified: Wed, 27 Jun 2018 08:48:34 GMT  
		Size: 41.4 MB (41445772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6293f87dc4327c69d8746d9f848cc033eef338ef4b8c07babe17029262c46971`  
		Last Modified: Wed, 27 Jun 2018 11:03:01 GMT  
		Size: 4.9 MB (4908773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:64bf86ef413eb183c24335bd0bd439f50afd00bd50f9d2cb446861b4715fcac9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45072964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ab42e4dc8d2f9c06b20b3f01638d707ca392f687fec436b1ccd3ba874fd75b`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 20 Jun 2018 09:12:05 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:21:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 20 Jun 2018 09:22:00 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:48:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 26 Jun 2018 08:48:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424f4d641cd11defa5c1f6171037a083d7701361919ea60d534f8891e1eb3f2`  
		Last Modified: Wed, 20 Jun 2018 09:24:42 GMT  
		Size: 38.2 MB (38176139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa666cf5540096eb39e0be6240ad9119398bd3a416726b7d683fcba94fa99647`  
		Last Modified: Tue, 26 Jun 2018 08:50:15 GMT  
		Size: 4.9 MB (4907793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; 386

```console
$ docker pull elixir@sha256:afa47d6ff916a1e3600cafbc18e16ec3f2adf81e991d949f27124d55633800ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48287256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc55060d32afdc11ca47130b03539a0a3e98259f0133cda1d6415f378bbd146`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:11:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:18:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:18:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:55:07 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:55:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:55:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e199c0e0b0a02987600a124a573aacebb48200d43ffc9f2285565e1b3a6b1`  
		Last Modified: Wed, 27 Jun 2018 12:43:00 GMT  
		Size: 41.3 MB (41252811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04be846db5122bd58108b55d7d2086c09511241ad272b36b4c26ef1551cf8ea0`  
		Last Modified: Wed, 27 Jun 2018 16:04:44 GMT  
		Size: 4.9 MB (4908053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:634d8306861c802101d94d75a0cb84cc47a8bc4c3e170ab624efab7f462f8dad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45535905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f19d41f030ca3e97a136a930b5a774a04174cd91c81ee6b5d419101e8a9589`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 08:39:46 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:47:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 08:47:23 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:21:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:42 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 14:21:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e3cdf63035fb6bed7a198105ceaf425a86b06390e6f44d0bd57f9e43219401`  
		Last Modified: Wed, 27 Jun 2018 09:23:47 GMT  
		Size: 38.5 MB (38545448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744569352446c256ebfdad5efb8c97de3ceafb580de566c03fd2e42984354460`  
		Last Modified: Wed, 27 Jun 2018 14:27:46 GMT  
		Size: 4.9 MB (4908812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:40e028672eea970f6999b560027f2d0897aa35f6c58a8b450631225323ad3453
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45676849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8117e169ec6f49e27aff0c4b2217f8c1f92ef1aeb3acb53c278adf9ef5cfab5e`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:54:48 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:59:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:59:38 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:21 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:04:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f94e57a949d35827d1d558c7453091709406e8c169adef6ef8d3708924ae8dc`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 38.6 MB (38582625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304404775f56f393ff7101a71cb5f2cb1d7a3c6a2fb7d86280d6335913481749`  
		Last Modified: Wed, 27 Jun 2018 15:07:21 GMT  
		Size: 4.9 MB (4908818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6.6-slim`

```console
$ docker pull elixir@sha256:6a02d2f7409f8749b7b359f5a0f8d507e3d5134568bc51f3dcb943e851d81c0f
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
$ docker pull elixir@sha256:ad44629c52d77cc814f25996b67d568909c1fb4d32f3a84d43a87407d20fbc47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111987162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300ed361995dfe5a8c1cf513ecf898cbd937f1f077dcfc842f68286e48ddb536`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 07:15:47 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:22:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:22:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:54:25 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:54:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215bb0a6871d73bdb3d95940d3089a0da9c1078b5eb3c122167125fb1418700f`  
		Last Modified: Wed, 27 Jun 2018 08:47:40 GMT  
		Size: 61.3 MB (61340005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e229d208832424f37ca6248d0036c05b9b107c456481d8bd9e15ea91e83c4e55`  
		Last Modified: Wed, 27 Jun 2018 11:02:17 GMT  
		Size: 5.3 MB (5327933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:1e212608be3e7aed682bc6944479d367082828831851cda729a85c443e0b0713
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105366486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5cac8365eba1cdf424e8cc9c06ce5b806ce5a4bfdb54c14efa2935f68c8c96`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 12:07:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:13:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:13:02 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 11:59:09 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:59:29 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 11:59:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239bb61ff86c13ff03fe7a154c102fdbb2f51983127ccff64a3204152088a062`  
		Last Modified: Wed, 20 Jun 2018 12:14:37 GMT  
		Size: 58.0 MB (57975184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2da27bd704e9626d9b8ff1ff7ad6fb293f9163b4bcf52210383713f8e52a2f3`  
		Last Modified: Tue, 26 Jun 2018 12:00:24 GMT  
		Size: 5.3 MB (5327565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:a671418e8c113ffba6d802d7a06c260cf2437cfbf09c303be65cb9e288c2d6fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107636520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40e1d3372e772ec334b1eab232777794a2679a6bc6ce2e57c23092fb7636b55`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 08:59:13 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:11:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 09:11:33 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:47:08 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:07 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 08:48:08 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70080f770eabb47a2bf8210d9394dcd4e73e611fbcca380900048ab8fa53dd3a`  
		Last Modified: Wed, 20 Jun 2018 09:24:06 GMT  
		Size: 59.2 MB (59199079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c8611ed9c3161f26527b345355dc5dbca6f7fadb1449336b83eeab235417c`  
		Last Modified: Tue, 26 Jun 2018 08:49:44 GMT  
		Size: 5.3 MB (5328092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; 386

```console
$ docker pull elixir@sha256:84f5612db012f6e975abe3b236ee86038560fe2d42dcf5c67b57d63a0e20222b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117749062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89092e307c18c1c6e88d4fd052a93baf4f1d2c6e9400ebcd8073dd3a4a7bdb59`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:03:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:10:48 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:54:33 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:57 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:54:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b1bb2228c7170018e069bdeab3c4fdf32ba69e426f913365524c2402a23c8b`  
		Last Modified: Wed, 27 Jun 2018 12:42:02 GMT  
		Size: 66.4 MB (66376336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82279ef3338c9a0edcaf6a8a171c5bb52d5b9ff6aa93f736e5011b5069d616b3`  
		Last Modified: Wed, 27 Jun 2018 16:04:02 GMT  
		Size: 5.3 MB (5327841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:a6c91dc45cd48c0c12185aa134fa2ca8266ddf34cf1240cceda04a01d371a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109244653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292d3d5549de4729f4bc0c99a69d8923aeab05432e33b2ba3986b57bb05b9ce4`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:29:09 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:38:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:39:15 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:19:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:21:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff46939aa9e6e71f484069c64894b828cf6b8ead7a41a20cee9d26457f686b`  
		Last Modified: Wed, 27 Jun 2018 09:23:06 GMT  
		Size: 58.3 MB (58329433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21714e8ad0177bf33b4fd1b05fcd9b4fa94187dd0ce04ba2c398522f132d69ed`  
		Last Modified: Wed, 27 Jun 2018 14:27:17 GMT  
		Size: 5.3 MB (5328192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6.6-slim` - linux; s390x

```console
$ docker pull elixir@sha256:b1e7ee63d4d5622ced08a2b72ed83da67066fb25e016f9bd37593668ad71e6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dbbd9fcf809c1fa073e8aa7cb50b6132c38c584367f36f1414f11528fd863a`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:54:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:27 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:02 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:04:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a0eaa26b0f6e5f7d27266df64761680f20ff9291f999564b3f4ef9869c8bb2`  
		Last Modified: Wed, 27 Jun 2018 12:20:58 GMT  
		Size: 59.9 MB (59871233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74025a269f4630bb9a6a77cbee51586d5aeba7746db6cad9fe2dd98f9c9ee09f`  
		Last Modified: Wed, 27 Jun 2018 15:07:08 GMT  
		Size: 5.3 MB (5327180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-alpine`

```console
$ docker pull elixir@sha256:82106c883b0f98037a11e119b2542d3bc321f2faf03e8e698f66f06f7eb19a83
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
$ docker pull elixir@sha256:c0a05d44cb462175421cbfe4c8aaf3df7dec9a7ef586766463e56b43c442661d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48420082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab086b49bf747afb5786e69a550b084c8e60a9a7a23d2b5b15d92ef39dba7763`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 07:22:57 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:29:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 07:29:34 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:55:01 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:55:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 10:55:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d530ef73bd8dfffab9ae77c3dfb8c691934054b1f88eeaa34e08f23bc25002`  
		Last Modified: Wed, 27 Jun 2018 08:48:34 GMT  
		Size: 41.4 MB (41445772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6293f87dc4327c69d8746d9f848cc033eef338ef4b8c07babe17029262c46971`  
		Last Modified: Wed, 27 Jun 2018 11:03:01 GMT  
		Size: 4.9 MB (4908773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:64bf86ef413eb183c24335bd0bd439f50afd00bd50f9d2cb446861b4715fcac9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45072964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ab42e4dc8d2f9c06b20b3f01638d707ca392f687fec436b1ccd3ba874fd75b`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 20 Jun 2018 09:12:05 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:21:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 20 Jun 2018 09:22:00 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:48:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 26 Jun 2018 08:48:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424f4d641cd11defa5c1f6171037a083d7701361919ea60d534f8891e1eb3f2`  
		Last Modified: Wed, 20 Jun 2018 09:24:42 GMT  
		Size: 38.2 MB (38176139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa666cf5540096eb39e0be6240ad9119398bd3a416726b7d683fcba94fa99647`  
		Last Modified: Tue, 26 Jun 2018 08:50:15 GMT  
		Size: 4.9 MB (4907793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; 386

```console
$ docker pull elixir@sha256:afa47d6ff916a1e3600cafbc18e16ec3f2adf81e991d949f27124d55633800ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48287256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc55060d32afdc11ca47130b03539a0a3e98259f0133cda1d6415f378bbd146`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:11:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:18:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:18:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:55:07 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:55:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:55:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e199c0e0b0a02987600a124a573aacebb48200d43ffc9f2285565e1b3a6b1`  
		Last Modified: Wed, 27 Jun 2018 12:43:00 GMT  
		Size: 41.3 MB (41252811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04be846db5122bd58108b55d7d2086c09511241ad272b36b4c26ef1551cf8ea0`  
		Last Modified: Wed, 27 Jun 2018 16:04:44 GMT  
		Size: 4.9 MB (4908053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:634d8306861c802101d94d75a0cb84cc47a8bc4c3e170ab624efab7f462f8dad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45535905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f19d41f030ca3e97a136a930b5a774a04174cd91c81ee6b5d419101e8a9589`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 08:39:46 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:47:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 08:47:23 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:21:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:42 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 14:21:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e3cdf63035fb6bed7a198105ceaf425a86b06390e6f44d0bd57f9e43219401`  
		Last Modified: Wed, 27 Jun 2018 09:23:47 GMT  
		Size: 38.5 MB (38545448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744569352446c256ebfdad5efb8c97de3ceafb580de566c03fd2e42984354460`  
		Last Modified: Wed, 27 Jun 2018 14:27:46 GMT  
		Size: 4.9 MB (4908812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-alpine` - linux; s390x

```console
$ docker pull elixir@sha256:40e028672eea970f6999b560027f2d0897aa35f6c58a8b450631225323ad3453
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45676849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8117e169ec6f49e27aff0c4b2217f8c1f92ef1aeb3acb53c278adf9ef5cfab5e`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:54:48 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:59:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:59:38 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:21 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:04:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f94e57a949d35827d1d558c7453091709406e8c169adef6ef8d3708924ae8dc`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 38.6 MB (38582625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304404775f56f393ff7101a71cb5f2cb1d7a3c6a2fb7d86280d6335913481749`  
		Last Modified: Wed, 27 Jun 2018 15:07:21 GMT  
		Size: 4.9 MB (4908818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.6-slim`

```console
$ docker pull elixir@sha256:6a02d2f7409f8749b7b359f5a0f8d507e3d5134568bc51f3dcb943e851d81c0f
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
$ docker pull elixir@sha256:ad44629c52d77cc814f25996b67d568909c1fb4d32f3a84d43a87407d20fbc47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111987162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300ed361995dfe5a8c1cf513ecf898cbd937f1f077dcfc842f68286e48ddb536`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 07:15:47 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:22:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:22:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:54:25 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:54:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215bb0a6871d73bdb3d95940d3089a0da9c1078b5eb3c122167125fb1418700f`  
		Last Modified: Wed, 27 Jun 2018 08:47:40 GMT  
		Size: 61.3 MB (61340005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e229d208832424f37ca6248d0036c05b9b107c456481d8bd9e15ea91e83c4e55`  
		Last Modified: Wed, 27 Jun 2018 11:02:17 GMT  
		Size: 5.3 MB (5327933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:1e212608be3e7aed682bc6944479d367082828831851cda729a85c443e0b0713
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105366486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5cac8365eba1cdf424e8cc9c06ce5b806ce5a4bfdb54c14efa2935f68c8c96`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 12:07:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:13:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:13:02 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 11:59:09 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:59:29 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 11:59:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239bb61ff86c13ff03fe7a154c102fdbb2f51983127ccff64a3204152088a062`  
		Last Modified: Wed, 20 Jun 2018 12:14:37 GMT  
		Size: 58.0 MB (57975184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2da27bd704e9626d9b8ff1ff7ad6fb293f9163b4bcf52210383713f8e52a2f3`  
		Last Modified: Tue, 26 Jun 2018 12:00:24 GMT  
		Size: 5.3 MB (5327565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:a671418e8c113ffba6d802d7a06c260cf2437cfbf09c303be65cb9e288c2d6fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107636520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40e1d3372e772ec334b1eab232777794a2679a6bc6ce2e57c23092fb7636b55`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 08:59:13 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:11:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 09:11:33 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:47:08 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:07 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 08:48:08 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70080f770eabb47a2bf8210d9394dcd4e73e611fbcca380900048ab8fa53dd3a`  
		Last Modified: Wed, 20 Jun 2018 09:24:06 GMT  
		Size: 59.2 MB (59199079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c8611ed9c3161f26527b345355dc5dbca6f7fadb1449336b83eeab235417c`  
		Last Modified: Tue, 26 Jun 2018 08:49:44 GMT  
		Size: 5.3 MB (5328092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; 386

```console
$ docker pull elixir@sha256:84f5612db012f6e975abe3b236ee86038560fe2d42dcf5c67b57d63a0e20222b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117749062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89092e307c18c1c6e88d4fd052a93baf4f1d2c6e9400ebcd8073dd3a4a7bdb59`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:03:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:10:48 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:54:33 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:57 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:54:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b1bb2228c7170018e069bdeab3c4fdf32ba69e426f913365524c2402a23c8b`  
		Last Modified: Wed, 27 Jun 2018 12:42:02 GMT  
		Size: 66.4 MB (66376336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82279ef3338c9a0edcaf6a8a171c5bb52d5b9ff6aa93f736e5011b5069d616b3`  
		Last Modified: Wed, 27 Jun 2018 16:04:02 GMT  
		Size: 5.3 MB (5327841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:a6c91dc45cd48c0c12185aa134fa2ca8266ddf34cf1240cceda04a01d371a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109244653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292d3d5549de4729f4bc0c99a69d8923aeab05432e33b2ba3986b57bb05b9ce4`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:29:09 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:38:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:39:15 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:19:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:21:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff46939aa9e6e71f484069c64894b828cf6b8ead7a41a20cee9d26457f686b`  
		Last Modified: Wed, 27 Jun 2018 09:23:06 GMT  
		Size: 58.3 MB (58329433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21714e8ad0177bf33b4fd1b05fcd9b4fa94187dd0ce04ba2c398522f132d69ed`  
		Last Modified: Wed, 27 Jun 2018 14:27:17 GMT  
		Size: 5.3 MB (5328192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:1.6-slim` - linux; s390x

```console
$ docker pull elixir@sha256:b1e7ee63d4d5622ced08a2b72ed83da67066fb25e016f9bd37593668ad71e6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dbbd9fcf809c1fa073e8aa7cb50b6132c38c584367f36f1414f11528fd863a`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:54:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:27 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:02 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:04:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a0eaa26b0f6e5f7d27266df64761680f20ff9291f999564b3f4ef9869c8bb2`  
		Last Modified: Wed, 27 Jun 2018 12:20:58 GMT  
		Size: 59.9 MB (59871233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74025a269f4630bb9a6a77cbee51586d5aeba7746db6cad9fe2dd98f9c9ee09f`  
		Last Modified: Wed, 27 Jun 2018 15:07:08 GMT  
		Size: 5.3 MB (5327180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:alpine`

```console
$ docker pull elixir@sha256:82106c883b0f98037a11e119b2542d3bc321f2faf03e8e698f66f06f7eb19a83
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
$ docker pull elixir@sha256:c0a05d44cb462175421cbfe4c8aaf3df7dec9a7ef586766463e56b43c442661d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48420082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab086b49bf747afb5786e69a550b084c8e60a9a7a23d2b5b15d92ef39dba7763`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 07:22:57 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:29:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 07:29:34 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:55:01 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:55:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 10:55:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d530ef73bd8dfffab9ae77c3dfb8c691934054b1f88eeaa34e08f23bc25002`  
		Last Modified: Wed, 27 Jun 2018 08:48:34 GMT  
		Size: 41.4 MB (41445772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6293f87dc4327c69d8746d9f848cc033eef338ef4b8c07babe17029262c46971`  
		Last Modified: Wed, 27 Jun 2018 11:03:01 GMT  
		Size: 4.9 MB (4908773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:64bf86ef413eb183c24335bd0bd439f50afd00bd50f9d2cb446861b4715fcac9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45072964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ab42e4dc8d2f9c06b20b3f01638d707ca392f687fec436b1ccd3ba874fd75b`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 20 Jun 2018 09:12:05 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:21:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 20 Jun 2018 09:22:00 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:48:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Tue, 26 Jun 2018 08:48:25 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424f4d641cd11defa5c1f6171037a083d7701361919ea60d534f8891e1eb3f2`  
		Last Modified: Wed, 20 Jun 2018 09:24:42 GMT  
		Size: 38.2 MB (38176139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa666cf5540096eb39e0be6240ad9119398bd3a416726b7d683fcba94fa99647`  
		Last Modified: Tue, 26 Jun 2018 08:50:15 GMT  
		Size: 4.9 MB (4907793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; 386

```console
$ docker pull elixir@sha256:afa47d6ff916a1e3600cafbc18e16ec3f2adf81e991d949f27124d55633800ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48287256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc55060d32afdc11ca47130b03539a0a3e98259f0133cda1d6415f378bbd146`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:11:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:18:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:18:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:55:07 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:55:12 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:55:12 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e199c0e0b0a02987600a124a573aacebb48200d43ffc9f2285565e1b3a6b1`  
		Last Modified: Wed, 27 Jun 2018 12:43:00 GMT  
		Size: 41.3 MB (41252811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04be846db5122bd58108b55d7d2086c09511241ad272b36b4c26ef1551cf8ea0`  
		Last Modified: Wed, 27 Jun 2018 16:04:44 GMT  
		Size: 4.9 MB (4908053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; ppc64le

```console
$ docker pull elixir@sha256:634d8306861c802101d94d75a0cb84cc47a8bc4c3e170ab624efab7f462f8dad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45535905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f19d41f030ca3e97a136a930b5a774a04174cd91c81ee6b5d419101e8a9589`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 08:39:46 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:47:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 08:47:23 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:21:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:42 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 14:21:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e3cdf63035fb6bed7a198105ceaf425a86b06390e6f44d0bd57f9e43219401`  
		Last Modified: Wed, 27 Jun 2018 09:23:47 GMT  
		Size: 38.5 MB (38545448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744569352446c256ebfdad5efb8c97de3ceafb580de566c03fd2e42984354460`  
		Last Modified: Wed, 27 Jun 2018 14:27:46 GMT  
		Size: 4.9 MB (4908812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:alpine` - linux; s390x

```console
$ docker pull elixir@sha256:40e028672eea970f6999b560027f2d0897aa35f6c58a8b450631225323ad3453
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45676849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8117e169ec6f49e27aff0c4b2217f8c1f92ef1aeb3acb53c278adf9ef5cfab5e`
-	Default Command: `["iex"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 27 Jun 2018 11:54:48 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:59:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 27 Jun 2018 11:59:38 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:21 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:24 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apk add --no-cache --virtual .build-deps $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apk del .build-deps
# Wed, 27 Jun 2018 15:04:24 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f94e57a949d35827d1d558c7453091709406e8c169adef6ef8d3708924ae8dc`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 38.6 MB (38582625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304404775f56f393ff7101a71cb5f2cb1d7a3c6a2fb7d86280d6335913481749`  
		Last Modified: Wed, 27 Jun 2018 15:07:21 GMT  
		Size: 4.9 MB (4908818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:latest`

```console
$ docker pull elixir@sha256:396973ef28bfb186f5cb55a6d44d87c9549e310f1004bf788d2321f2782880fa
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
$ docker pull elixir@sha256:aef61761cbddaad42b7bd3385f3a8d0e48952bbb11a81b3f7be927527d8afe98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.7 MB (466675972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc72e5a40ba99db8988b6a49abd33a9096538f6301b9a1df1b1e71473f74e83`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:57:24 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:06:21 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:06:21 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 07:06:21 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 07:06:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 07:06:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 07:06:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 10:52:47 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:09 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 10:54:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ddfdfc7d12d2e9d472df6f8f910edf803d71a98628858eb0879f94f60ba1b`  
		Last Modified: Tue, 26 Jun 2018 22:32:32 GMT  
		Size: 213.2 MB (213163111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a5c6066d190e65885f09d404ed89f2c18c320bb58523a3985d9977ec742f2`  
		Last Modified: Wed, 27 Jun 2018 08:46:39 GMT  
		Size: 133.4 MB (133390161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02e3b0ff5397ec13d5e8da8c4c46d004d89b93309a39c65de7100306f2f3fc8`  
		Last Modified: Wed, 27 Jun 2018 08:46:20 GMT  
		Size: 201.4 KB (201368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c427631ce18c73b18aaa958a2e4b769241e29db76e112374df88170acfd8599e`  
		Last Modified: Wed, 27 Jun 2018 08:46:21 GMT  
		Size: 3.4 MB (3410275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa730dcd6e2e8f3f8630c21558502a69584a8b206e1b3ddbf99796bbef376409`  
		Last Modified: Wed, 27 Jun 2018 11:01:31 GMT  
		Size: 6.0 MB (6019246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; arm variant v7

```console
$ docker pull elixir@sha256:a4f89d253de3d3386354440d7758ed014a76d4bddbec7ee8af154ea065c68f11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.5 MB (431464687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e79158fe986f1f51dc77eeb609d889af551e2686d68d02dfc7b28307048742`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 11:58:06 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:06:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:06:57 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 12:06:57 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 12:07:01 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 12:07:02 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 12:07:37 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 11:57:46 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:58:58 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 11:58:58 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db44b96c0d159f4219a92aaeaf0416ca0071d957996ca479d58a405048f03f`  
		Last Modified: Sat, 05 May 2018 12:37:37 GMT  
		Size: 194.0 MB (193956094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eabac711df975f373e51565d0178c4ab220888e13dfe7025e13207c48d3c085`  
		Last Modified: Wed, 20 Jun 2018 12:14:04 GMT  
		Size: 126.1 MB (126103587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a869ee902aa6d39bbe0c669d2289363d8be69e85731246f7287822509705b6e`  
		Last Modified: Wed, 20 Jun 2018 12:13:45 GMT  
		Size: 201.3 KB (201349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197e7885bdc1207d471198f600b15977d5525042c0a8ca4bcb697473439bf577`  
		Last Modified: Wed, 20 Jun 2018 12:13:42 GMT  
		Size: 3.4 MB (3387520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167abea71b322e6318b0655c07aac788a27ecee85238cd16f91b3b6dbf2e289b`  
		Last Modified: Tue, 26 Jun 2018 12:00:01 GMT  
		Size: 6.0 MB (6015895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:2c182b05536fccf4e344cad60d0447e8c6002ccafbb757916cfb00b9df96a87b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.6 MB (444592175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34793022d49fc5cb3ff72eab59fde1adb9a3fb523e862071cd7e02de307ef71a`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:49:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:39:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 08:57:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 08:57:36 GMT
CMD ["erl"]
# Wed, 20 Jun 2018 08:57:37 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 20 Jun 2018 08:57:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 20 Jun 2018 08:57:53 GMT
ENV REBAR3_VERSION=3.5.3
# Wed, 20 Jun 2018 08:58:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="1bad3feb48b43cdd8bbe40d0a2763fe36e916320c214a0689587198f28e81649" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 26 Jun 2018 08:44:44 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:46:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Tue, 26 Jun 2018 08:46:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba449478ba3f55a2c9c207e134b0ac263ee8ab8eb5b06645dc53f7dfe80c81`  
		Last Modified: Sat, 05 May 2018 10:33:43 GMT  
		Size: 200.6 MB (200588134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dc871747b21b1276b33f4896ff72443719699ffd2a3fd9ae9773b9d2eb84c`  
		Last Modified: Wed, 20 Jun 2018 09:23:18 GMT  
		Size: 129.5 MB (129490475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52a868be1b32ee6b7b5bec70976a5efba466b0aeea9d02d0faa03bbcb58cfaa`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 201.4 KB (201360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64db396d5f843525fbef79f982e1cd8ae74a715c7f5866cad2cbf0e93b168cd5`  
		Last Modified: Wed, 20 Jun 2018 09:22:51 GMT  
		Size: 3.4 MB (3387252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d0cb095e527f4a223564fb924b09ce61498a25362efa6bba97be0f1a80237f`  
		Last Modified: Tue, 26 Jun 2018 08:49:11 GMT  
		Size: 6.0 MB (6018944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; 386

```console
$ docker pull elixir@sha256:e3236cda323a7133ca88487ea5a6bcc42822e36b13812a78b18c194c50ab0b17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.0 MB (470977557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2addee8d21c7863b5e24aa207367a3d09ecca2568424a2b797da5ec92df7ff`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:53:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:02:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:02:18 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:02:18 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:02:24 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:02:24 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:02:55 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:53:05 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:27 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:54:27 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a0d55d840cf58e5be5bbed7fd8b12815834f841f9c540fb03aad9b0915c51b`  
		Last Modified: Wed, 27 Jun 2018 12:40:50 GMT  
		Size: 130.2 MB (130160808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67bb377bcebff09fe7ce9783bc89560482313a405124d026381efa2f7f397f9`  
		Last Modified: Wed, 27 Jun 2018 12:40:19 GMT  
		Size: 201.4 KB (201450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662da90e8e58a59bbbb868fd6f9b6ab24387660fffe161b427830c1c49487a67`  
		Last Modified: Wed, 27 Jun 2018 12:40:20 GMT  
		Size: 3.4 MB (3410454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df330bedddf8006b6197407f081b3b7dfa5345920b4a3a9532d9594c7812e139`  
		Last Modified: Wed, 27 Jun 2018 16:03:20 GMT  
		Size: 6.0 MB (6015794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; ppc64le

```console
$ docker pull elixir@sha256:d069929a9f2ac1fe3bd5f9261e9d32463cc248f54d6df74d518a3f72061a8d38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459181528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10512448121735019edbadc60f43b9b316d555cdfdd30e56d7a77957ad18c675`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:55:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:16:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:27:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:27:45 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 08:27:52 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 08:27:58 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 08:28:03 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 08:28:42 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 14:17:19 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:19:19 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 14:19:20 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bed85717ae43798daf2dd19ea0720f961c621b792c35ef96f0a76bf9445326`  
		Last Modified: Sat, 05 May 2018 11:06:30 GMT  
		Size: 208.8 MB (208809785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bc4ecaaf47c00e609dfda46553b93fc3e9eaea29117813b8629227f37d9a0`  
		Last Modified: Wed, 27 Jun 2018 09:22:14 GMT  
		Size: 130.9 MB (130855438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44526841824d7e53e5182efe1875e0adf01d9bdefe47e56cf29617265c7f6ac9`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 201.5 KB (201463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889fe5717b83b9a8736c657252ea070f026e8c50878355f9e22cc81f941d592a`  
		Last Modified: Wed, 27 Jun 2018 09:21:43 GMT  
		Size: 3.4 MB (3410356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ce6889610833ddb7eaa20769a26d98ea1584da779f343e5a5d9443b329b266`  
		Last Modified: Wed, 27 Jun 2018 14:26:46 GMT  
		Size: 6.0 MB (6019437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:latest` - linux; s390x

```console
$ docker pull elixir@sha256:684dcd0560f94beaa68c95e2b609b59b1b484c4b0c05e468b03031996f5be01e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.3 MB (459343891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d78852bdc14f861e84f7f6c3d2c9232d4f4604e982ae1a5a72309d691dc7bd8`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:35:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:36:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:38:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:41:27 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:48:50 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:48:50 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 11:48:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 27 Jun 2018 11:48:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 11:48:53 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 11:49:12 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 27 Jun 2018 15:03:06 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:03:50 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="74507b0646bf485ee3af0e7727e3fdab7123f1c5ecf2187a52a928ad60f93831" 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean
# Wed, 27 Jun 2018 15:03:50 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85f5ec4e23ee12af518c5fcad0035942a1f87ec2088506cee32142c1c65f61a`  
		Last Modified: Sat, 05 May 2018 12:48:28 GMT  
		Size: 10.3 MB (10300914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2eea9e27e3fa96462ebe8337d9b6cdcd7d157804dcc45590711a4a7408f64d`  
		Last Modified: Sat, 05 May 2018 12:48:26 GMT  
		Size: 4.4 MB (4366581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c5cebd8cef0143ddd69b694ac843162a0cc224c2db057b0d500f4e4adbb1f`  
		Last Modified: Sat, 05 May 2018 12:48:59 GMT  
		Size: 50.5 MB (50450723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12a7d9bf33b4756bf2185312ea56a7da4363751e56bd56c537fc039e1943f0a`  
		Last Modified: Sat, 05 May 2018 12:49:54 GMT  
		Size: 205.2 MB (205181057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a83fc6bd1f4b5c08f5bd81b37b5db3ef68a9806fd49afe9b3b6d4e7a50e5a5f`  
		Last Modified: Wed, 27 Jun 2018 12:20:28 GMT  
		Size: 134.2 MB (134228337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365329188ff9562e36861a49cee5a5462bf0f630b6d1b9da23be4aed18fa3cce`  
		Last Modified: Wed, 27 Jun 2018 12:20:13 GMT  
		Size: 201.5 KB (201477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e478cf74cf3bc1bd585bae9d2db510efea25ef130740d5460c6ebed8569802eb`  
		Last Modified: Wed, 27 Jun 2018 12:20:14 GMT  
		Size: 3.4 MB (3410685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f87ca5681dd603f911fd3008924108d956c50b6b6aa14bb919065ef54cf586f`  
		Last Modified: Wed, 27 Jun 2018 15:06:52 GMT  
		Size: 6.0 MB (6018852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:slim`

```console
$ docker pull elixir@sha256:6a02d2f7409f8749b7b359f5a0f8d507e3d5134568bc51f3dcb943e851d81c0f
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
$ docker pull elixir@sha256:ad44629c52d77cc814f25996b67d568909c1fb4d32f3a84d43a87407d20fbc47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111987162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300ed361995dfe5a8c1cf513ecf898cbd937f1f077dcfc842f68286e48ddb536`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 07:15:47 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 07:22:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:22:42 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 10:54:25 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 10:54:51 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:54:51 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215bb0a6871d73bdb3d95940d3089a0da9c1078b5eb3c122167125fb1418700f`  
		Last Modified: Wed, 27 Jun 2018 08:47:40 GMT  
		Size: 61.3 MB (61340005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e229d208832424f37ca6248d0036c05b9b107c456481d8bd9e15ea91e83c4e55`  
		Last Modified: Wed, 27 Jun 2018 11:02:17 GMT  
		Size: 5.3 MB (5327933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:1e212608be3e7aed682bc6944479d367082828831851cda729a85c443e0b0713
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105366486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5cac8365eba1cdf424e8cc9c06ce5b806ce5a4bfdb54c14efa2935f68c8c96`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 12:07:53 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 12:13:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 12:13:02 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 11:59:09 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 11:59:29 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 11:59:30 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239bb61ff86c13ff03fe7a154c102fdbb2f51983127ccff64a3204152088a062`  
		Last Modified: Wed, 20 Jun 2018 12:14:37 GMT  
		Size: 58.0 MB (57975184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2da27bd704e9626d9b8ff1ff7ad6fb293f9163b4bcf52210383713f8e52a2f3`  
		Last Modified: Tue, 26 Jun 2018 12:00:24 GMT  
		Size: 5.3 MB (5327565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:a671418e8c113ffba6d802d7a06c260cf2437cfbf09c303be65cb9e288c2d6fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107636520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40e1d3372e772ec334b1eab232777794a2679a6bc6ce2e57c23092fb7636b55`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 08:59:13 GMT
ENV OTP_VERSION=21.0
# Wed, 20 Jun 2018 09:11:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="5a2d8e33c39a78a2dcc0c39bf9d2dfdf2974f0fad28385b4ede020a2321d643f" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 20 Jun 2018 09:11:33 GMT
CMD ["erl"]
# Tue, 26 Jun 2018 08:47:08 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Tue, 26 Jun 2018 08:48:07 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 08:48:08 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70080f770eabb47a2bf8210d9394dcd4e73e611fbcca380900048ab8fa53dd3a`  
		Last Modified: Wed, 20 Jun 2018 09:24:06 GMT  
		Size: 59.2 MB (59199079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c8611ed9c3161f26527b345355dc5dbca6f7fadb1449336b83eeab235417c`  
		Last Modified: Tue, 26 Jun 2018 08:49:44 GMT  
		Size: 5.3 MB (5328092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; 386

```console
$ docker pull elixir@sha256:84f5612db012f6e975abe3b236ee86038560fe2d42dcf5c67b57d63a0e20222b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117749062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89092e307c18c1c6e88d4fd052a93baf4f1d2c6e9400ebcd8073dd3a4a7bdb59`
-	Default Command: `["iex"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:03:06 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:10:48 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:54:33 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:54:57 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:54:57 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b1bb2228c7170018e069bdeab3c4fdf32ba69e426f913365524c2402a23c8b`  
		Last Modified: Wed, 27 Jun 2018 12:42:02 GMT  
		Size: 66.4 MB (66376336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82279ef3338c9a0edcaf6a8a171c5bb52d5b9ff6aa93f736e5011b5069d616b3`  
		Last Modified: Wed, 27 Jun 2018 16:04:02 GMT  
		Size: 5.3 MB (5327841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:a6c91dc45cd48c0c12185aa134fa2ca8266ddf34cf1240cceda04a01d371a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109244653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292d3d5549de4729f4bc0c99a69d8923aeab05432e33b2ba3986b57bb05b9ce4`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:29:09 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 08:38:53 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:39:15 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 14:19:34 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 14:21:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:21:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff46939aa9e6e71f484069c64894b828cf6b8ead7a41a20cee9d26457f686b`  
		Last Modified: Wed, 27 Jun 2018 09:23:06 GMT  
		Size: 58.3 MB (58329433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21714e8ad0177bf33b4fd1b05fcd9b4fa94187dd0ce04ba2c398522f132d69ed`  
		Last Modified: Wed, 27 Jun 2018 14:27:17 GMT  
		Size: 5.3 MB (5328192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; s390x

```console
$ docker pull elixir@sha256:b1e7ee63d4d5622ced08a2b72ed83da67066fb25e016f9bd37593668ad71e6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110379835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dbbd9fcf809c1fa073e8aa7cb50b6132c38c584367f36f1414f11528fd863a`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:49:25 GMT
ENV OTP_VERSION=21.0.1
# Wed, 27 Jun 2018 11:54:26 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="65a5f1c54bd52a5e9840cda536a2b37611bb08ab869295bba812c06c2bc7c9bc" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:54:27 GMT
CMD ["erl"]
# Wed, 27 Jun 2018 15:04:02 GMT
ENV ELIXIR_VERSION=v1.6.6 LANG=C.UTF-8
# Wed, 27 Jun 2018 15:04:16 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="d6a84726a042407110d3b13b1ce8d9524b4a50df68174e79d89a9e42e30b410b" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:04:16 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a0eaa26b0f6e5f7d27266df64761680f20ff9291f999564b3f4ef9869c8bb2`  
		Last Modified: Wed, 27 Jun 2018 12:20:58 GMT  
		Size: 59.9 MB (59871233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74025a269f4630bb9a6a77cbee51586d5aeba7746db6cad9fe2dd98f9c9ee09f`  
		Last Modified: Wed, 27 Jun 2018 15:07:08 GMT  
		Size: 5.3 MB (5327180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
