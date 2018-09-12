<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `erlang`

-	[`erlang:17`](#erlang17)
-	[`erlang:17.5`](#erlang175)
-	[`erlang:17.5.6`](#erlang1756)
-	[`erlang:17.5.6.9`](#erlang17569)
-	[`erlang:17.5.6.9-slim`](#erlang17569-slim)
-	[`erlang:17.5.6-slim`](#erlang1756-slim)
-	[`erlang:17.5-slim`](#erlang175-slim)
-	[`erlang:17-slim`](#erlang17-slim)
-	[`erlang:18`](#erlang18)
-	[`erlang:18.3`](#erlang183)
-	[`erlang:18.3.4`](#erlang1834)
-	[`erlang:18.3.4.9`](#erlang18349)
-	[`erlang:18.3.4.9-slim`](#erlang18349-slim)
-	[`erlang:18.3.4-slim`](#erlang1834-slim)
-	[`erlang:18.3-slim`](#erlang183-slim)
-	[`erlang:18-slim`](#erlang18-slim)
-	[`erlang:19`](#erlang19)
-	[`erlang:19.3`](#erlang193)
-	[`erlang:19.3.6`](#erlang1936)
-	[`erlang:19.3.6.10`](#erlang193610)
-	[`erlang:19.3.6.10-slim`](#erlang193610-slim)
-	[`erlang:19.3.6-slim`](#erlang1936-slim)
-	[`erlang:19.3-slim`](#erlang193-slim)
-	[`erlang:19-slim`](#erlang19-slim)
-	[`erlang:20`](#erlang20)
-	[`erlang:20.3`](#erlang203)
-	[`erlang:20.3.8`](#erlang2038)
-	[`erlang:20.3.8.8`](#erlang20388)
-	[`erlang:20.3.8.8-alpine`](#erlang20388-alpine)
-	[`erlang:20.3.8.8-slim`](#erlang20388-slim)
-	[`erlang:20.3.8-alpine`](#erlang2038-alpine)
-	[`erlang:20.3.8-slim`](#erlang2038-slim)
-	[`erlang:20.3-alpine`](#erlang203-alpine)
-	[`erlang:20.3-slim`](#erlang203-slim)
-	[`erlang:20-alpine`](#erlang20-alpine)
-	[`erlang:20-slim`](#erlang20-slim)
-	[`erlang:21`](#erlang21)
-	[`erlang:21.0`](#erlang210)
-	[`erlang:21.0.8`](#erlang2108)
-	[`erlang:21.0.8-alpine`](#erlang2108-alpine)
-	[`erlang:21.0.8-slim`](#erlang2108-slim)
-	[`erlang:21.0-alpine`](#erlang210-alpine)
-	[`erlang:21.0-slim`](#erlang210-slim)
-	[`erlang:21-alpine`](#erlang21-alpine)
-	[`erlang:21-slim`](#erlang21-slim)
-	[`erlang:alpine`](#erlangalpine)
-	[`erlang:latest`](#erlanglatest)
-	[`erlang:slim`](#erlangslim)

## `erlang:17`

```console
$ docker pull erlang@sha256:48809ec1dbde5550bc4db253465198781b297a0808e21e8ec29e574122d557f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17` - linux; amd64

```console
$ docker pull erlang@sha256:7a05ab06fc09317134bf29a55d45838d1057ab3c415b38fb4be13fa3e8685178
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303428515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f513005b41c34b1c36204e274f69188b664afa565a143dbcc5f8970ed59245d`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:24 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:44:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:44:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44063519d1e800f72c83a1a2b602a3e640d3cc4ec90a37f98b6cc611afba6ef9`  
		Last Modified: Wed, 05 Sep 2018 00:55:52 GMT  
		Size: 57.2 MB (57234856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; arm variant v7

```console
$ docker pull erlang@sha256:2143509a8e14ccdd27650335a9c12822518632df5eaf50f66ba1d81aa2c0805a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275018217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6147bdbdfe16f9abea36aeb3f4a795873a830f364907940c0ff56b8d92bf13`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:19:53 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:26:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:26:19 GMT
CMD ["erl"]
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
	-	`sha256:c1b580b7b5d6bed069205cdcb73a0c4d22a2047d793d5a9bc7849e1dc19e6bd2`  
		Last Modified: Wed, 05 Sep 2018 13:40:08 GMT  
		Size: 54.3 MB (54260277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ddd24524d069ac81924487c0e33aa6fa955767f721c205d7b564ab664d5bc20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280606067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb941ad7f11e0f8adb103a4a09dba7dca7feab754e705e289d317359d237201`
-	Default Command: `["erl"]`

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
# Sat, 05 May 2018 09:26:48 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 09:40:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:48 GMT
CMD ["erl"]
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
	-	`sha256:8247c4e67ac3d161800976b1254eb24df17ef8b9db92ef4ca9c78b993c0e76ca`  
		Last Modified: Sat, 05 May 2018 09:44:05 GMT  
		Size: 55.0 MB (55039722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; 386

```console
$ docker pull erlang@sha256:bbf0f6b144c8b8d4e7eb678243ffb24cd5d60656b66e2597cc8aa6c97d5b1d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309875605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665a2878b6d62e4e63307246bbfa211f4a7f3aa0361796647ecab3516cf5c532`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:57:41 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:12:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:12:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44385b033d33c7f8a087cd58d22540e89ae06695b0b5be2e9e3f350cfd83f217`  
		Last Modified: Fri, 07 Sep 2018 05:21:44 GMT  
		Size: 56.4 MB (56423634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; ppc64le

```console
$ docker pull erlang@sha256:c5d9c8ed2c6ba6b9c4ef79aa7e4c1a354aa64356ddd3b86ee9ca42cd62794126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff969b10fc9b61cc0014fcb9e2a5c6272f8c1855c339eaa57475e3375649af38`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:09:13 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 12:18:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 12:18:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b80419adae67f8e9f1a9fee9a620fdcbdff5713ef2d259c091aaca6ae14914`  
		Last Modified: Sat, 05 May 2018 10:53:52 GMT  
		Size: 42.8 MB (42759764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9782ab10e560a415f2b85eb37a040621316e5040c4e66df5bc5605aa41ea894e`  
		Last Modified: Sat, 05 May 2018 10:55:34 GMT  
		Size: 123.0 MB (123004437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeddafa3d4bd0d7fb91cf57145450a1e766afca44ef6084e9a8d09929711f04a`  
		Last Modified: Sat, 05 May 2018 12:24:31 GMT  
		Size: 55.3 MB (55251232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; s390x

```console
$ docker pull erlang@sha256:9f7c7f4829820f12f7fbb70e11f8aacab430884fcb4bbcaa91de3be7de22c505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287714203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a46d0ae3cf71b344cf6ea3debe2f0e0985ea5ed547933b6e46629587d9222c`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:34:25 GMT
ENV OTP_VERSION=17.5.6.9
# Thu, 10 May 2018 12:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 10 May 2018 12:45:48 GMT
CMD ["erl"]
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
	-	`sha256:5c2a074a68ecd2291686a7ee2b8c5ba48363c68a85d95b0b150fbc8c031b2d7f`  
		Last Modified: Thu, 10 May 2018 12:52:15 GMT  
		Size: 55.9 MB (55867447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5`

```console
$ docker pull erlang@sha256:48809ec1dbde5550bc4db253465198781b297a0808e21e8ec29e574122d557f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5` - linux; amd64

```console
$ docker pull erlang@sha256:7a05ab06fc09317134bf29a55d45838d1057ab3c415b38fb4be13fa3e8685178
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303428515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f513005b41c34b1c36204e274f69188b664afa565a143dbcc5f8970ed59245d`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:24 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:44:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:44:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44063519d1e800f72c83a1a2b602a3e640d3cc4ec90a37f98b6cc611afba6ef9`  
		Last Modified: Wed, 05 Sep 2018 00:55:52 GMT  
		Size: 57.2 MB (57234856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; arm variant v7

```console
$ docker pull erlang@sha256:2143509a8e14ccdd27650335a9c12822518632df5eaf50f66ba1d81aa2c0805a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275018217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6147bdbdfe16f9abea36aeb3f4a795873a830f364907940c0ff56b8d92bf13`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:19:53 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:26:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:26:19 GMT
CMD ["erl"]
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
	-	`sha256:c1b580b7b5d6bed069205cdcb73a0c4d22a2047d793d5a9bc7849e1dc19e6bd2`  
		Last Modified: Wed, 05 Sep 2018 13:40:08 GMT  
		Size: 54.3 MB (54260277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ddd24524d069ac81924487c0e33aa6fa955767f721c205d7b564ab664d5bc20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280606067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb941ad7f11e0f8adb103a4a09dba7dca7feab754e705e289d317359d237201`
-	Default Command: `["erl"]`

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
# Sat, 05 May 2018 09:26:48 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 09:40:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:48 GMT
CMD ["erl"]
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
	-	`sha256:8247c4e67ac3d161800976b1254eb24df17ef8b9db92ef4ca9c78b993c0e76ca`  
		Last Modified: Sat, 05 May 2018 09:44:05 GMT  
		Size: 55.0 MB (55039722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; 386

```console
$ docker pull erlang@sha256:bbf0f6b144c8b8d4e7eb678243ffb24cd5d60656b66e2597cc8aa6c97d5b1d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309875605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665a2878b6d62e4e63307246bbfa211f4a7f3aa0361796647ecab3516cf5c532`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:57:41 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:12:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:12:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44385b033d33c7f8a087cd58d22540e89ae06695b0b5be2e9e3f350cfd83f217`  
		Last Modified: Fri, 07 Sep 2018 05:21:44 GMT  
		Size: 56.4 MB (56423634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; ppc64le

```console
$ docker pull erlang@sha256:c5d9c8ed2c6ba6b9c4ef79aa7e4c1a354aa64356ddd3b86ee9ca42cd62794126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff969b10fc9b61cc0014fcb9e2a5c6272f8c1855c339eaa57475e3375649af38`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:09:13 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 12:18:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 12:18:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b80419adae67f8e9f1a9fee9a620fdcbdff5713ef2d259c091aaca6ae14914`  
		Last Modified: Sat, 05 May 2018 10:53:52 GMT  
		Size: 42.8 MB (42759764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9782ab10e560a415f2b85eb37a040621316e5040c4e66df5bc5605aa41ea894e`  
		Last Modified: Sat, 05 May 2018 10:55:34 GMT  
		Size: 123.0 MB (123004437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeddafa3d4bd0d7fb91cf57145450a1e766afca44ef6084e9a8d09929711f04a`  
		Last Modified: Sat, 05 May 2018 12:24:31 GMT  
		Size: 55.3 MB (55251232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; s390x

```console
$ docker pull erlang@sha256:9f7c7f4829820f12f7fbb70e11f8aacab430884fcb4bbcaa91de3be7de22c505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287714203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a46d0ae3cf71b344cf6ea3debe2f0e0985ea5ed547933b6e46629587d9222c`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:34:25 GMT
ENV OTP_VERSION=17.5.6.9
# Thu, 10 May 2018 12:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 10 May 2018 12:45:48 GMT
CMD ["erl"]
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
	-	`sha256:5c2a074a68ecd2291686a7ee2b8c5ba48363c68a85d95b0b150fbc8c031b2d7f`  
		Last Modified: Thu, 10 May 2018 12:52:15 GMT  
		Size: 55.9 MB (55867447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6`

```console
$ docker pull erlang@sha256:48809ec1dbde5550bc4db253465198781b297a0808e21e8ec29e574122d557f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6` - linux; amd64

```console
$ docker pull erlang@sha256:7a05ab06fc09317134bf29a55d45838d1057ab3c415b38fb4be13fa3e8685178
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303428515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f513005b41c34b1c36204e274f69188b664afa565a143dbcc5f8970ed59245d`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:24 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:44:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:44:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44063519d1e800f72c83a1a2b602a3e640d3cc4ec90a37f98b6cc611afba6ef9`  
		Last Modified: Wed, 05 Sep 2018 00:55:52 GMT  
		Size: 57.2 MB (57234856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; arm variant v7

```console
$ docker pull erlang@sha256:2143509a8e14ccdd27650335a9c12822518632df5eaf50f66ba1d81aa2c0805a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275018217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6147bdbdfe16f9abea36aeb3f4a795873a830f364907940c0ff56b8d92bf13`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:19:53 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:26:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:26:19 GMT
CMD ["erl"]
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
	-	`sha256:c1b580b7b5d6bed069205cdcb73a0c4d22a2047d793d5a9bc7849e1dc19e6bd2`  
		Last Modified: Wed, 05 Sep 2018 13:40:08 GMT  
		Size: 54.3 MB (54260277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ddd24524d069ac81924487c0e33aa6fa955767f721c205d7b564ab664d5bc20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280606067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb941ad7f11e0f8adb103a4a09dba7dca7feab754e705e289d317359d237201`
-	Default Command: `["erl"]`

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
# Sat, 05 May 2018 09:26:48 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 09:40:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:48 GMT
CMD ["erl"]
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
	-	`sha256:8247c4e67ac3d161800976b1254eb24df17ef8b9db92ef4ca9c78b993c0e76ca`  
		Last Modified: Sat, 05 May 2018 09:44:05 GMT  
		Size: 55.0 MB (55039722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; 386

```console
$ docker pull erlang@sha256:bbf0f6b144c8b8d4e7eb678243ffb24cd5d60656b66e2597cc8aa6c97d5b1d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309875605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665a2878b6d62e4e63307246bbfa211f4a7f3aa0361796647ecab3516cf5c532`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:57:41 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:12:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:12:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44385b033d33c7f8a087cd58d22540e89ae06695b0b5be2e9e3f350cfd83f217`  
		Last Modified: Fri, 07 Sep 2018 05:21:44 GMT  
		Size: 56.4 MB (56423634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; ppc64le

```console
$ docker pull erlang@sha256:c5d9c8ed2c6ba6b9c4ef79aa7e4c1a354aa64356ddd3b86ee9ca42cd62794126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff969b10fc9b61cc0014fcb9e2a5c6272f8c1855c339eaa57475e3375649af38`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:09:13 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 12:18:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 12:18:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b80419adae67f8e9f1a9fee9a620fdcbdff5713ef2d259c091aaca6ae14914`  
		Last Modified: Sat, 05 May 2018 10:53:52 GMT  
		Size: 42.8 MB (42759764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9782ab10e560a415f2b85eb37a040621316e5040c4e66df5bc5605aa41ea894e`  
		Last Modified: Sat, 05 May 2018 10:55:34 GMT  
		Size: 123.0 MB (123004437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeddafa3d4bd0d7fb91cf57145450a1e766afca44ef6084e9a8d09929711f04a`  
		Last Modified: Sat, 05 May 2018 12:24:31 GMT  
		Size: 55.3 MB (55251232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; s390x

```console
$ docker pull erlang@sha256:9f7c7f4829820f12f7fbb70e11f8aacab430884fcb4bbcaa91de3be7de22c505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287714203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a46d0ae3cf71b344cf6ea3debe2f0e0985ea5ed547933b6e46629587d9222c`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:34:25 GMT
ENV OTP_VERSION=17.5.6.9
# Thu, 10 May 2018 12:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 10 May 2018 12:45:48 GMT
CMD ["erl"]
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
	-	`sha256:5c2a074a68ecd2291686a7ee2b8c5ba48363c68a85d95b0b150fbc8c031b2d7f`  
		Last Modified: Thu, 10 May 2018 12:52:15 GMT  
		Size: 55.9 MB (55867447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6.9`

```console
$ docker pull erlang@sha256:48809ec1dbde5550bc4db253465198781b297a0808e21e8ec29e574122d557f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6.9` - linux; amd64

```console
$ docker pull erlang@sha256:7a05ab06fc09317134bf29a55d45838d1057ab3c415b38fb4be13fa3e8685178
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303428515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f513005b41c34b1c36204e274f69188b664afa565a143dbcc5f8970ed59245d`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:24 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:44:28 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:44:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44063519d1e800f72c83a1a2b602a3e640d3cc4ec90a37f98b6cc611afba6ef9`  
		Last Modified: Wed, 05 Sep 2018 00:55:52 GMT  
		Size: 57.2 MB (57234856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; arm variant v7

```console
$ docker pull erlang@sha256:2143509a8e14ccdd27650335a9c12822518632df5eaf50f66ba1d81aa2c0805a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275018217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6147bdbdfe16f9abea36aeb3f4a795873a830f364907940c0ff56b8d92bf13`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:19:53 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:26:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:26:19 GMT
CMD ["erl"]
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
	-	`sha256:c1b580b7b5d6bed069205cdcb73a0c4d22a2047d793d5a9bc7849e1dc19e6bd2`  
		Last Modified: Wed, 05 Sep 2018 13:40:08 GMT  
		Size: 54.3 MB (54260277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ddd24524d069ac81924487c0e33aa6fa955767f721c205d7b564ab664d5bc20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280606067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb941ad7f11e0f8adb103a4a09dba7dca7feab754e705e289d317359d237201`
-	Default Command: `["erl"]`

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
# Sat, 05 May 2018 09:26:48 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 09:40:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:48 GMT
CMD ["erl"]
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
	-	`sha256:8247c4e67ac3d161800976b1254eb24df17ef8b9db92ef4ca9c78b993c0e76ca`  
		Last Modified: Sat, 05 May 2018 09:44:05 GMT  
		Size: 55.0 MB (55039722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; 386

```console
$ docker pull erlang@sha256:bbf0f6b144c8b8d4e7eb678243ffb24cd5d60656b66e2597cc8aa6c97d5b1d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309875605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665a2878b6d62e4e63307246bbfa211f4a7f3aa0361796647ecab3516cf5c532`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:57:41 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:12:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:12:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44385b033d33c7f8a087cd58d22540e89ae06695b0b5be2e9e3f350cfd83f217`  
		Last Modified: Fri, 07 Sep 2018 05:21:44 GMT  
		Size: 56.4 MB (56423634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; ppc64le

```console
$ docker pull erlang@sha256:c5d9c8ed2c6ba6b9c4ef79aa7e4c1a354aa64356ddd3b86ee9ca42cd62794126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff969b10fc9b61cc0014fcb9e2a5c6272f8c1855c339eaa57475e3375649af38`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:09:13 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 05 May 2018 12:18:36 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 05 May 2018 12:18:38 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b80419adae67f8e9f1a9fee9a620fdcbdff5713ef2d259c091aaca6ae14914`  
		Last Modified: Sat, 05 May 2018 10:53:52 GMT  
		Size: 42.8 MB (42759764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9782ab10e560a415f2b85eb37a040621316e5040c4e66df5bc5605aa41ea894e`  
		Last Modified: Sat, 05 May 2018 10:55:34 GMT  
		Size: 123.0 MB (123004437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeddafa3d4bd0d7fb91cf57145450a1e766afca44ef6084e9a8d09929711f04a`  
		Last Modified: Sat, 05 May 2018 12:24:31 GMT  
		Size: 55.3 MB (55251232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; s390x

```console
$ docker pull erlang@sha256:9f7c7f4829820f12f7fbb70e11f8aacab430884fcb4bbcaa91de3be7de22c505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287714203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a46d0ae3cf71b344cf6ea3debe2f0e0985ea5ed547933b6e46629587d9222c`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:34:25 GMT
ENV OTP_VERSION=17.5.6.9
# Thu, 10 May 2018 12:45:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 10 May 2018 12:45:48 GMT
CMD ["erl"]
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
	-	`sha256:5c2a074a68ecd2291686a7ee2b8c5ba48363c68a85d95b0b150fbc8c031b2d7f`  
		Last Modified: Thu, 10 May 2018 12:52:15 GMT  
		Size: 55.9 MB (55867447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6.9-slim`

```console
$ docker pull erlang@sha256:3301c15bfd89dbd10ab74cc028a80540543100cebf3a790957a4d8d786251918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6.9-slim` - linux; amd64

```console
$ docker pull erlang@sha256:75d2c8a99606d2c55ca51a96308cb0b990b0c37d6b62ed97eb12e6dcff21048e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6fb7ac512530e58ceb5e36c2f8fd0c6e7e5a6962dec13c8fb78214f51883b1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:44:44 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:52:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24344fda3853f7567dbdf9757837469311499b8ef02830d15d380208384e381a`  
		Last Modified: Wed, 05 Sep 2018 00:56:12 GMT  
		Size: 63.1 MB (63054782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:bc6b1d0ffe564f372ffb4182fac2fd556e7031f6d6c9f1cfaa268cf306d4e1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109122437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a60f3ef1d7fcf34505f536899a5356b033805a88f507099221d390dddb505`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:26:36 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:33:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:33:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217ee553e7842fb866735b99e0980a67188716cb634d7bbb5d4901107f4bdf94`  
		Last Modified: Wed, 05 Sep 2018 13:40:51 GMT  
		Size: 58.9 MB (58934049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:9ad9c289a5827b95b4ad01fd990397d92659499102f61365926c3308ca2634cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b26923fb796e27be9809f14dd45ec6fcd40a2d51fe287632eeee11954433b2e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:05:47 GMT
ENV OTP_VERSION=17.5.6.9
# Tue, 01 May 2018 11:21:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 01 May 2018 11:21:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a305369e594c6e2de955c3509ec000a53bfe1a88b1a506d14ad3b77081d8b2`  
		Last Modified: Tue, 01 May 2018 11:28:51 GMT  
		Size: 60.1 MB (60117144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; 386

```console
$ docker pull erlang@sha256:158545ec6f489ca80b5eb193d33d6cce1c037d83aeeb2056f1a02b3cde8e74f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121267467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94214ead6527c751b9f0fe99e5d4915e96638bbfeca0eddefca5f54e3f80cd7a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:57:56 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:20:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:20:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528ac17adbfc4c70970800fbf10d2c34073a35119c67afa420d454b4009f816f`  
		Last Modified: Fri, 07 Sep 2018 05:22:10 GMT  
		Size: 66.8 MB (66783416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:4654b8b224027ae2a22e50a049e4b6a5ec2f7855f820e3d7f455eab11eb4cc0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114458506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374ac29b8876de55739bff48243fcb65e00bb79cc806a3390f1919dcf505eed8`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:10:49 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 09:20:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:20:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8d9746a25d8032a3a472ff38ecc565298a49bcf969cee709be1a3a50d94c3`  
		Last Modified: Sat, 28 Apr 2018 09:21:48 GMT  
		Size: 61.1 MB (61065695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; s390x

```console
$ docker pull erlang@sha256:19017765d9b91cdadac078af0fd32de62f9906b78eadca9bd194287947ea9f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d387366a8a7c2a849ebe9003b9392ecf9af2061506de9b397ced26f033e79f53`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:40:29 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 12:50:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d0e9e912769d8cac12e85c8730b7a5b63e8d627aaf7dffcd9054d993e9fb5`  
		Last Modified: Sat, 28 Apr 2018 12:53:35 GMT  
		Size: 61.5 MB (61513906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6-slim`

```console
$ docker pull erlang@sha256:3301c15bfd89dbd10ab74cc028a80540543100cebf3a790957a4d8d786251918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6-slim` - linux; amd64

```console
$ docker pull erlang@sha256:75d2c8a99606d2c55ca51a96308cb0b990b0c37d6b62ed97eb12e6dcff21048e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6fb7ac512530e58ceb5e36c2f8fd0c6e7e5a6962dec13c8fb78214f51883b1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:44:44 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:52:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24344fda3853f7567dbdf9757837469311499b8ef02830d15d380208384e381a`  
		Last Modified: Wed, 05 Sep 2018 00:56:12 GMT  
		Size: 63.1 MB (63054782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:bc6b1d0ffe564f372ffb4182fac2fd556e7031f6d6c9f1cfaa268cf306d4e1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109122437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a60f3ef1d7fcf34505f536899a5356b033805a88f507099221d390dddb505`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:26:36 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:33:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:33:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217ee553e7842fb866735b99e0980a67188716cb634d7bbb5d4901107f4bdf94`  
		Last Modified: Wed, 05 Sep 2018 13:40:51 GMT  
		Size: 58.9 MB (58934049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:9ad9c289a5827b95b4ad01fd990397d92659499102f61365926c3308ca2634cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b26923fb796e27be9809f14dd45ec6fcd40a2d51fe287632eeee11954433b2e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:05:47 GMT
ENV OTP_VERSION=17.5.6.9
# Tue, 01 May 2018 11:21:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 01 May 2018 11:21:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a305369e594c6e2de955c3509ec000a53bfe1a88b1a506d14ad3b77081d8b2`  
		Last Modified: Tue, 01 May 2018 11:28:51 GMT  
		Size: 60.1 MB (60117144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; 386

```console
$ docker pull erlang@sha256:158545ec6f489ca80b5eb193d33d6cce1c037d83aeeb2056f1a02b3cde8e74f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121267467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94214ead6527c751b9f0fe99e5d4915e96638bbfeca0eddefca5f54e3f80cd7a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:57:56 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:20:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:20:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528ac17adbfc4c70970800fbf10d2c34073a35119c67afa420d454b4009f816f`  
		Last Modified: Fri, 07 Sep 2018 05:22:10 GMT  
		Size: 66.8 MB (66783416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:4654b8b224027ae2a22e50a049e4b6a5ec2f7855f820e3d7f455eab11eb4cc0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114458506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374ac29b8876de55739bff48243fcb65e00bb79cc806a3390f1919dcf505eed8`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:10:49 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 09:20:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:20:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8d9746a25d8032a3a472ff38ecc565298a49bcf969cee709be1a3a50d94c3`  
		Last Modified: Sat, 28 Apr 2018 09:21:48 GMT  
		Size: 61.1 MB (61065695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; s390x

```console
$ docker pull erlang@sha256:19017765d9b91cdadac078af0fd32de62f9906b78eadca9bd194287947ea9f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d387366a8a7c2a849ebe9003b9392ecf9af2061506de9b397ced26f033e79f53`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:40:29 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 12:50:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d0e9e912769d8cac12e85c8730b7a5b63e8d627aaf7dffcd9054d993e9fb5`  
		Last Modified: Sat, 28 Apr 2018 12:53:35 GMT  
		Size: 61.5 MB (61513906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5-slim`

```console
$ docker pull erlang@sha256:3301c15bfd89dbd10ab74cc028a80540543100cebf3a790957a4d8d786251918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5-slim` - linux; amd64

```console
$ docker pull erlang@sha256:75d2c8a99606d2c55ca51a96308cb0b990b0c37d6b62ed97eb12e6dcff21048e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6fb7ac512530e58ceb5e36c2f8fd0c6e7e5a6962dec13c8fb78214f51883b1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:44:44 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:52:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24344fda3853f7567dbdf9757837469311499b8ef02830d15d380208384e381a`  
		Last Modified: Wed, 05 Sep 2018 00:56:12 GMT  
		Size: 63.1 MB (63054782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:bc6b1d0ffe564f372ffb4182fac2fd556e7031f6d6c9f1cfaa268cf306d4e1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109122437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a60f3ef1d7fcf34505f536899a5356b033805a88f507099221d390dddb505`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:26:36 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:33:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:33:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217ee553e7842fb866735b99e0980a67188716cb634d7bbb5d4901107f4bdf94`  
		Last Modified: Wed, 05 Sep 2018 13:40:51 GMT  
		Size: 58.9 MB (58934049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:9ad9c289a5827b95b4ad01fd990397d92659499102f61365926c3308ca2634cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b26923fb796e27be9809f14dd45ec6fcd40a2d51fe287632eeee11954433b2e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:05:47 GMT
ENV OTP_VERSION=17.5.6.9
# Tue, 01 May 2018 11:21:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 01 May 2018 11:21:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a305369e594c6e2de955c3509ec000a53bfe1a88b1a506d14ad3b77081d8b2`  
		Last Modified: Tue, 01 May 2018 11:28:51 GMT  
		Size: 60.1 MB (60117144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; 386

```console
$ docker pull erlang@sha256:158545ec6f489ca80b5eb193d33d6cce1c037d83aeeb2056f1a02b3cde8e74f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121267467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94214ead6527c751b9f0fe99e5d4915e96638bbfeca0eddefca5f54e3f80cd7a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:57:56 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:20:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:20:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528ac17adbfc4c70970800fbf10d2c34073a35119c67afa420d454b4009f816f`  
		Last Modified: Fri, 07 Sep 2018 05:22:10 GMT  
		Size: 66.8 MB (66783416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:4654b8b224027ae2a22e50a049e4b6a5ec2f7855f820e3d7f455eab11eb4cc0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114458506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374ac29b8876de55739bff48243fcb65e00bb79cc806a3390f1919dcf505eed8`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:10:49 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 09:20:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:20:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8d9746a25d8032a3a472ff38ecc565298a49bcf969cee709be1a3a50d94c3`  
		Last Modified: Sat, 28 Apr 2018 09:21:48 GMT  
		Size: 61.1 MB (61065695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; s390x

```console
$ docker pull erlang@sha256:19017765d9b91cdadac078af0fd32de62f9906b78eadca9bd194287947ea9f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d387366a8a7c2a849ebe9003b9392ecf9af2061506de9b397ced26f033e79f53`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:40:29 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 12:50:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d0e9e912769d8cac12e85c8730b7a5b63e8d627aaf7dffcd9054d993e9fb5`  
		Last Modified: Sat, 28 Apr 2018 12:53:35 GMT  
		Size: 61.5 MB (61513906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17-slim`

```console
$ docker pull erlang@sha256:3301c15bfd89dbd10ab74cc028a80540543100cebf3a790957a4d8d786251918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17-slim` - linux; amd64

```console
$ docker pull erlang@sha256:75d2c8a99606d2c55ca51a96308cb0b990b0c37d6b62ed97eb12e6dcff21048e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117306993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6fb7ac512530e58ceb5e36c2f8fd0c6e7e5a6962dec13c8fb78214f51883b1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:44:44 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 00:52:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24344fda3853f7567dbdf9757837469311499b8ef02830d15d380208384e381a`  
		Last Modified: Wed, 05 Sep 2018 00:56:12 GMT  
		Size: 63.1 MB (63054782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:bc6b1d0ffe564f372ffb4182fac2fd556e7031f6d6c9f1cfaa268cf306d4e1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109122437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a60f3ef1d7fcf34505f536899a5356b033805a88f507099221d390dddb505`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:26:36 GMT
ENV OTP_VERSION=17.5.6.9
# Wed, 05 Sep 2018 13:33:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:33:12 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217ee553e7842fb866735b99e0980a67188716cb634d7bbb5d4901107f4bdf94`  
		Last Modified: Wed, 05 Sep 2018 13:40:51 GMT  
		Size: 58.9 MB (58934049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:9ad9c289a5827b95b4ad01fd990397d92659499102f61365926c3308ca2634cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111563998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b26923fb796e27be9809f14dd45ec6fcd40a2d51fe287632eeee11954433b2e`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:05:47 GMT
ENV OTP_VERSION=17.5.6.9
# Tue, 01 May 2018 11:21:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 01 May 2018 11:21:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a305369e594c6e2de955c3509ec000a53bfe1a88b1a506d14ad3b77081d8b2`  
		Last Modified: Tue, 01 May 2018 11:28:51 GMT  
		Size: 60.1 MB (60117144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; 386

```console
$ docker pull erlang@sha256:158545ec6f489ca80b5eb193d33d6cce1c037d83aeeb2056f1a02b3cde8e74f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121267467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94214ead6527c751b9f0fe99e5d4915e96638bbfeca0eddefca5f54e3f80cd7a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:57:56 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 07 Sep 2018 05:20:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:20:35 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528ac17adbfc4c70970800fbf10d2c34073a35119c67afa420d454b4009f816f`  
		Last Modified: Fri, 07 Sep 2018 05:22:10 GMT  
		Size: 66.8 MB (66783416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:4654b8b224027ae2a22e50a049e4b6a5ec2f7855f820e3d7f455eab11eb4cc0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114458506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374ac29b8876de55739bff48243fcb65e00bb79cc806a3390f1919dcf505eed8`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:10:49 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 09:20:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:20:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8d9746a25d8032a3a472ff38ecc565298a49bcf969cee709be1a3a50d94c3`  
		Last Modified: Sat, 28 Apr 2018 09:21:48 GMT  
		Size: 61.1 MB (61065695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; s390x

```console
$ docker pull erlang@sha256:19017765d9b91cdadac078af0fd32de62f9906b78eadca9bd194287947ea9f19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d387366a8a7c2a849ebe9003b9392ecf9af2061506de9b397ced26f033e79f53`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:40:29 GMT
ENV OTP_VERSION=17.5.6.9
# Sat, 28 Apr 2018 12:50:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d0e9e912769d8cac12e85c8730b7a5b63e8d627aaf7dffcd9054d993e9fb5`  
		Last Modified: Sat, 28 Apr 2018 12:53:35 GMT  
		Size: 61.5 MB (61513906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18`

```console
$ docker pull erlang@sha256:4610bfec0c1fd4677a3074fbea50863d1cce07832749e0a9e83ae0ebe8cf524e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18` - linux; amd64

```console
$ docker pull erlang@sha256:959cf42d380d934f4c6587b5866b8a9d92d4da8e10e263776a59c4de292c3c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308677329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c1163496546804c087f37799a17f39fc57f812b2fdd3e84f9a7e3b24d258b6`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:40 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:26:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:26:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:26:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:26:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:26:04 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:26:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d6b7088a6da9195dc0f73542c4ec341bd22a4f38a0b8390d3c69b6895b5e08`  
		Last Modified: Wed, 05 Sep 2018 00:55:15 GMT  
		Size: 58.7 MB (58695566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d617cac2db0814d116716ded55d7e6f033b8736ae00dc4b86e04df0c4ede7efa`  
		Last Modified: Wed, 05 Sep 2018 00:55:06 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8832a4e21ed7c07811fe3eeff8faf266f95f0f0e9f87042039b80d38f60478`  
		Last Modified: Wed, 05 Sep 2018 00:55:07 GMT  
		Size: 3.6 MB (3587758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; arm variant v7

```console
$ docker pull erlang@sha256:4abb73a6e0143c6f199602eae993ba9eab0cf5843f20dfc6f4dd1457e45f1e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280054648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c33c4680f43881fb38d41a3788c5501634011c40395819d3011523caca8ea49`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:05:29 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:11:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:38 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 13:11:38 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 13:11:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 13:11:47 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 13:12:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:f3b284ba59fdf88171706b99676f668b10b768125b0c3e6ff88630cbace77710`  
		Last Modified: Wed, 05 Sep 2018 13:38:11 GMT  
		Size: 55.5 MB (55508433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d696051fecc0347bafcde5d0239a4c5f6e02f27dbad399c2cdf644fb266a2efc`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 200.4 KB (200365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08f5bea78995c516a15e13cb6404464a7eedb55f1da178fc06bfa3b3c8871e`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 3.6 MB (3587910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ba67c0659a12f640b9c30336f4ab1f03d5d98438793c5ff34084067652add259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285508118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a87e7457a1e649a44f09279978a330bb90b5ace0e8fa7973df13d23187088`
-	Default Command: `["erl"]`

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
# Wed, 06 Jun 2018 12:13:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 06 Jun 2018 12:26:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:37 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:26:39 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:26:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 10:05:54 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 10:07:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5791d3909373087a4d5e77b82f8df91596963ac614a61745871195b9cdb82590`  
		Last Modified: Wed, 06 Jun 2018 12:32:21 GMT  
		Size: 56.3 MB (56344928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57a4d6c698555e4ec2ac139d09be5749d1b613adb147aca125c7e1855a9616`  
		Last Modified: Wed, 06 Jun 2018 12:32:06 GMT  
		Size: 200.4 KB (200355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bd20779a128b01a9f206d8f5325cfe7fa7d619423f17bcec6143360353d4fb`  
		Last Modified: Wed, 27 Jun 2018 10:15:03 GMT  
		Size: 3.4 MB (3396490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; 386

```console
$ docker pull erlang@sha256:5baafb4c14969a34befa1cb7761f76e5498be8ac1bd543df25ff242583b769f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315135310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b25b9bfdc01f1230ba6e9dcf1c9e25cb6001acb69b4c780493cc4df1794d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:38 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 16:35:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:35:18 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 16:35:19 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 16:35:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 16:35:29 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 16:36:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cdc8a492e83d5701044e94e47deae1ea590e2bc981627b20d14383442b2319`  
		Last Modified: Wed, 05 Sep 2018 17:04:53 GMT  
		Size: 57.9 MB (57893814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac01e174716f3aca74618c290f8d74cdfbec2c42db60198dceaa47cdea5e257`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 200.4 KB (200411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120db47c0880ebc1c8d5f95351817c5506eebff31b34bff68b7fa73f7dbfbc3`  
		Last Modified: Wed, 05 Sep 2018 17:04:25 GMT  
		Size: 3.6 MB (3589114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; s390x

```console
$ docker pull erlang@sha256:042b1b6ceca0220e4e2b95497cdd496e41d6348216dd8e40dd28d870bad14580
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292689932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa265eea8fe885d636625800dcf85df2035846191e3907d29b7cc56fd7b9430`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:21:22 GMT
ENV OTP_VERSION=18.3.4.9
# Thu, 10 May 2018 12:33:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 10 May 2018 12:33:27 GMT
CMD ["erl"]
# Thu, 10 May 2018 12:33:28 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 10 May 2018 12:33:31 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:18:41 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:19:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5cfaa4da19b28ddccd90451f5ae54473b5b26e45c45609c0dcdad13c101379d8`  
		Last Modified: Thu, 10 May 2018 12:51:15 GMT  
		Size: 57.2 MB (57245515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2314af60f06d14108eaacf9772375927084fe0c8bb3328e4da6b40c054fa1ba`  
		Last Modified: Thu, 10 May 2018 12:50:59 GMT  
		Size: 200.4 KB (200398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dffa0a72755dcae2ae48bb2e771e5ba09b2bbd78e080633492e37567f5f231a`  
		Last Modified: Wed, 27 Jun 2018 12:23:18 GMT  
		Size: 3.4 MB (3397263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3`

```console
$ docker pull erlang@sha256:4610bfec0c1fd4677a3074fbea50863d1cce07832749e0a9e83ae0ebe8cf524e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3` - linux; amd64

```console
$ docker pull erlang@sha256:959cf42d380d934f4c6587b5866b8a9d92d4da8e10e263776a59c4de292c3c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308677329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c1163496546804c087f37799a17f39fc57f812b2fdd3e84f9a7e3b24d258b6`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:40 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:26:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:26:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:26:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:26:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:26:04 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:26:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d6b7088a6da9195dc0f73542c4ec341bd22a4f38a0b8390d3c69b6895b5e08`  
		Last Modified: Wed, 05 Sep 2018 00:55:15 GMT  
		Size: 58.7 MB (58695566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d617cac2db0814d116716ded55d7e6f033b8736ae00dc4b86e04df0c4ede7efa`  
		Last Modified: Wed, 05 Sep 2018 00:55:06 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8832a4e21ed7c07811fe3eeff8faf266f95f0f0e9f87042039b80d38f60478`  
		Last Modified: Wed, 05 Sep 2018 00:55:07 GMT  
		Size: 3.6 MB (3587758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; arm variant v7

```console
$ docker pull erlang@sha256:4abb73a6e0143c6f199602eae993ba9eab0cf5843f20dfc6f4dd1457e45f1e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280054648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c33c4680f43881fb38d41a3788c5501634011c40395819d3011523caca8ea49`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:05:29 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:11:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:38 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 13:11:38 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 13:11:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 13:11:47 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 13:12:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:f3b284ba59fdf88171706b99676f668b10b768125b0c3e6ff88630cbace77710`  
		Last Modified: Wed, 05 Sep 2018 13:38:11 GMT  
		Size: 55.5 MB (55508433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d696051fecc0347bafcde5d0239a4c5f6e02f27dbad399c2cdf644fb266a2efc`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 200.4 KB (200365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08f5bea78995c516a15e13cb6404464a7eedb55f1da178fc06bfa3b3c8871e`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 3.6 MB (3587910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ba67c0659a12f640b9c30336f4ab1f03d5d98438793c5ff34084067652add259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285508118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a87e7457a1e649a44f09279978a330bb90b5ace0e8fa7973df13d23187088`
-	Default Command: `["erl"]`

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
# Wed, 06 Jun 2018 12:13:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 06 Jun 2018 12:26:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:37 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:26:39 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:26:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 10:05:54 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 10:07:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5791d3909373087a4d5e77b82f8df91596963ac614a61745871195b9cdb82590`  
		Last Modified: Wed, 06 Jun 2018 12:32:21 GMT  
		Size: 56.3 MB (56344928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57a4d6c698555e4ec2ac139d09be5749d1b613adb147aca125c7e1855a9616`  
		Last Modified: Wed, 06 Jun 2018 12:32:06 GMT  
		Size: 200.4 KB (200355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bd20779a128b01a9f206d8f5325cfe7fa7d619423f17bcec6143360353d4fb`  
		Last Modified: Wed, 27 Jun 2018 10:15:03 GMT  
		Size: 3.4 MB (3396490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; 386

```console
$ docker pull erlang@sha256:5baafb4c14969a34befa1cb7761f76e5498be8ac1bd543df25ff242583b769f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315135310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b25b9bfdc01f1230ba6e9dcf1c9e25cb6001acb69b4c780493cc4df1794d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:38 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 16:35:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:35:18 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 16:35:19 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 16:35:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 16:35:29 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 16:36:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cdc8a492e83d5701044e94e47deae1ea590e2bc981627b20d14383442b2319`  
		Last Modified: Wed, 05 Sep 2018 17:04:53 GMT  
		Size: 57.9 MB (57893814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac01e174716f3aca74618c290f8d74cdfbec2c42db60198dceaa47cdea5e257`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 200.4 KB (200411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120db47c0880ebc1c8d5f95351817c5506eebff31b34bff68b7fa73f7dbfbc3`  
		Last Modified: Wed, 05 Sep 2018 17:04:25 GMT  
		Size: 3.6 MB (3589114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; s390x

```console
$ docker pull erlang@sha256:042b1b6ceca0220e4e2b95497cdd496e41d6348216dd8e40dd28d870bad14580
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292689932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa265eea8fe885d636625800dcf85df2035846191e3907d29b7cc56fd7b9430`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:21:22 GMT
ENV OTP_VERSION=18.3.4.9
# Thu, 10 May 2018 12:33:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 10 May 2018 12:33:27 GMT
CMD ["erl"]
# Thu, 10 May 2018 12:33:28 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 10 May 2018 12:33:31 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:18:41 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:19:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5cfaa4da19b28ddccd90451f5ae54473b5b26e45c45609c0dcdad13c101379d8`  
		Last Modified: Thu, 10 May 2018 12:51:15 GMT  
		Size: 57.2 MB (57245515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2314af60f06d14108eaacf9772375927084fe0c8bb3328e4da6b40c054fa1ba`  
		Last Modified: Thu, 10 May 2018 12:50:59 GMT  
		Size: 200.4 KB (200398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dffa0a72755dcae2ae48bb2e771e5ba09b2bbd78e080633492e37567f5f231a`  
		Last Modified: Wed, 27 Jun 2018 12:23:18 GMT  
		Size: 3.4 MB (3397263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4`

```console
$ docker pull erlang@sha256:4610bfec0c1fd4677a3074fbea50863d1cce07832749e0a9e83ae0ebe8cf524e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4` - linux; amd64

```console
$ docker pull erlang@sha256:959cf42d380d934f4c6587b5866b8a9d92d4da8e10e263776a59c4de292c3c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308677329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c1163496546804c087f37799a17f39fc57f812b2fdd3e84f9a7e3b24d258b6`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:40 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:26:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:26:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:26:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:26:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:26:04 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:26:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d6b7088a6da9195dc0f73542c4ec341bd22a4f38a0b8390d3c69b6895b5e08`  
		Last Modified: Wed, 05 Sep 2018 00:55:15 GMT  
		Size: 58.7 MB (58695566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d617cac2db0814d116716ded55d7e6f033b8736ae00dc4b86e04df0c4ede7efa`  
		Last Modified: Wed, 05 Sep 2018 00:55:06 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8832a4e21ed7c07811fe3eeff8faf266f95f0f0e9f87042039b80d38f60478`  
		Last Modified: Wed, 05 Sep 2018 00:55:07 GMT  
		Size: 3.6 MB (3587758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; arm variant v7

```console
$ docker pull erlang@sha256:4abb73a6e0143c6f199602eae993ba9eab0cf5843f20dfc6f4dd1457e45f1e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280054648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c33c4680f43881fb38d41a3788c5501634011c40395819d3011523caca8ea49`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:05:29 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:11:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:38 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 13:11:38 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 13:11:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 13:11:47 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 13:12:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:f3b284ba59fdf88171706b99676f668b10b768125b0c3e6ff88630cbace77710`  
		Last Modified: Wed, 05 Sep 2018 13:38:11 GMT  
		Size: 55.5 MB (55508433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d696051fecc0347bafcde5d0239a4c5f6e02f27dbad399c2cdf644fb266a2efc`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 200.4 KB (200365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08f5bea78995c516a15e13cb6404464a7eedb55f1da178fc06bfa3b3c8871e`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 3.6 MB (3587910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ba67c0659a12f640b9c30336f4ab1f03d5d98438793c5ff34084067652add259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285508118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a87e7457a1e649a44f09279978a330bb90b5ace0e8fa7973df13d23187088`
-	Default Command: `["erl"]`

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
# Wed, 06 Jun 2018 12:13:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 06 Jun 2018 12:26:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:37 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:26:39 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:26:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 10:05:54 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 10:07:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5791d3909373087a4d5e77b82f8df91596963ac614a61745871195b9cdb82590`  
		Last Modified: Wed, 06 Jun 2018 12:32:21 GMT  
		Size: 56.3 MB (56344928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57a4d6c698555e4ec2ac139d09be5749d1b613adb147aca125c7e1855a9616`  
		Last Modified: Wed, 06 Jun 2018 12:32:06 GMT  
		Size: 200.4 KB (200355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bd20779a128b01a9f206d8f5325cfe7fa7d619423f17bcec6143360353d4fb`  
		Last Modified: Wed, 27 Jun 2018 10:15:03 GMT  
		Size: 3.4 MB (3396490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; 386

```console
$ docker pull erlang@sha256:5baafb4c14969a34befa1cb7761f76e5498be8ac1bd543df25ff242583b769f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315135310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b25b9bfdc01f1230ba6e9dcf1c9e25cb6001acb69b4c780493cc4df1794d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:38 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 16:35:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:35:18 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 16:35:19 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 16:35:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 16:35:29 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 16:36:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cdc8a492e83d5701044e94e47deae1ea590e2bc981627b20d14383442b2319`  
		Last Modified: Wed, 05 Sep 2018 17:04:53 GMT  
		Size: 57.9 MB (57893814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac01e174716f3aca74618c290f8d74cdfbec2c42db60198dceaa47cdea5e257`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 200.4 KB (200411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120db47c0880ebc1c8d5f95351817c5506eebff31b34bff68b7fa73f7dbfbc3`  
		Last Modified: Wed, 05 Sep 2018 17:04:25 GMT  
		Size: 3.6 MB (3589114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; s390x

```console
$ docker pull erlang@sha256:042b1b6ceca0220e4e2b95497cdd496e41d6348216dd8e40dd28d870bad14580
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292689932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa265eea8fe885d636625800dcf85df2035846191e3907d29b7cc56fd7b9430`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:21:22 GMT
ENV OTP_VERSION=18.3.4.9
# Thu, 10 May 2018 12:33:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 10 May 2018 12:33:27 GMT
CMD ["erl"]
# Thu, 10 May 2018 12:33:28 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 10 May 2018 12:33:31 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:18:41 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:19:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5cfaa4da19b28ddccd90451f5ae54473b5b26e45c45609c0dcdad13c101379d8`  
		Last Modified: Thu, 10 May 2018 12:51:15 GMT  
		Size: 57.2 MB (57245515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2314af60f06d14108eaacf9772375927084fe0c8bb3328e4da6b40c054fa1ba`  
		Last Modified: Thu, 10 May 2018 12:50:59 GMT  
		Size: 200.4 KB (200398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dffa0a72755dcae2ae48bb2e771e5ba09b2bbd78e080633492e37567f5f231a`  
		Last Modified: Wed, 27 Jun 2018 12:23:18 GMT  
		Size: 3.4 MB (3397263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4.9`

```console
$ docker pull erlang@sha256:4610bfec0c1fd4677a3074fbea50863d1cce07832749e0a9e83ae0ebe8cf524e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4.9` - linux; amd64

```console
$ docker pull erlang@sha256:959cf42d380d934f4c6587b5866b8a9d92d4da8e10e263776a59c4de292c3c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308677329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c1163496546804c087f37799a17f39fc57f812b2fdd3e84f9a7e3b24d258b6`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:40 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:26:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:26:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:26:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:26:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:26:04 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:26:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d6b7088a6da9195dc0f73542c4ec341bd22a4f38a0b8390d3c69b6895b5e08`  
		Last Modified: Wed, 05 Sep 2018 00:55:15 GMT  
		Size: 58.7 MB (58695566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d617cac2db0814d116716ded55d7e6f033b8736ae00dc4b86e04df0c4ede7efa`  
		Last Modified: Wed, 05 Sep 2018 00:55:06 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8832a4e21ed7c07811fe3eeff8faf266f95f0f0e9f87042039b80d38f60478`  
		Last Modified: Wed, 05 Sep 2018 00:55:07 GMT  
		Size: 3.6 MB (3587758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9` - linux; arm variant v7

```console
$ docker pull erlang@sha256:4abb73a6e0143c6f199602eae993ba9eab0cf5843f20dfc6f4dd1457e45f1e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280054648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c33c4680f43881fb38d41a3788c5501634011c40395819d3011523caca8ea49`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 13:05:29 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:11:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:38 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 13:11:38 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 13:11:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 13:11:47 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 13:12:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:f3b284ba59fdf88171706b99676f668b10b768125b0c3e6ff88630cbace77710`  
		Last Modified: Wed, 05 Sep 2018 13:38:11 GMT  
		Size: 55.5 MB (55508433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d696051fecc0347bafcde5d0239a4c5f6e02f27dbad399c2cdf644fb266a2efc`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 200.4 KB (200365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08f5bea78995c516a15e13cb6404464a7eedb55f1da178fc06bfa3b3c8871e`  
		Last Modified: Wed, 05 Sep 2018 13:37:56 GMT  
		Size: 3.6 MB (3587910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ba67c0659a12f640b9c30336f4ab1f03d5d98438793c5ff34084067652add259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285508118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7a87e7457a1e649a44f09279978a330bb90b5ace0e8fa7973df13d23187088`
-	Default Command: `["erl"]`

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
# Wed, 06 Jun 2018 12:13:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 06 Jun 2018 12:26:35 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:26:37 GMT
CMD ["erl"]
# Wed, 06 Jun 2018 12:26:39 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 06 Jun 2018 12:26:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 10:05:54 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 10:07:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5791d3909373087a4d5e77b82f8df91596963ac614a61745871195b9cdb82590`  
		Last Modified: Wed, 06 Jun 2018 12:32:21 GMT  
		Size: 56.3 MB (56344928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57a4d6c698555e4ec2ac139d09be5749d1b613adb147aca125c7e1855a9616`  
		Last Modified: Wed, 06 Jun 2018 12:32:06 GMT  
		Size: 200.4 KB (200355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bd20779a128b01a9f206d8f5325cfe7fa7d619423f17bcec6143360353d4fb`  
		Last Modified: Wed, 27 Jun 2018 10:15:03 GMT  
		Size: 3.4 MB (3396490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9` - linux; 386

```console
$ docker pull erlang@sha256:5baafb4c14969a34befa1cb7761f76e5498be8ac1bd543df25ff242583b769f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315135310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b25b9bfdc01f1230ba6e9dcf1c9e25cb6001acb69b4c780493cc4df1794d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:38 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 16:35:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:35:18 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 16:35:19 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 16:35:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 16:35:29 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 16:36:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cdc8a492e83d5701044e94e47deae1ea590e2bc981627b20d14383442b2319`  
		Last Modified: Wed, 05 Sep 2018 17:04:53 GMT  
		Size: 57.9 MB (57893814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac01e174716f3aca74618c290f8d74cdfbec2c42db60198dceaa47cdea5e257`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 200.4 KB (200411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120db47c0880ebc1c8d5f95351817c5506eebff31b34bff68b7fa73f7dbfbc3`  
		Last Modified: Wed, 05 Sep 2018 17:04:25 GMT  
		Size: 3.6 MB (3589114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9` - linux; s390x

```console
$ docker pull erlang@sha256:042b1b6ceca0220e4e2b95497cdd496e41d6348216dd8e40dd28d870bad14580
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292689932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa265eea8fe885d636625800dcf85df2035846191e3907d29b7cc56fd7b9430`
-	Default Command: `["erl"]`

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
# Thu, 10 May 2018 12:21:22 GMT
ENV OTP_VERSION=18.3.4.9
# Thu, 10 May 2018 12:33:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 10 May 2018 12:33:27 GMT
CMD ["erl"]
# Thu, 10 May 2018 12:33:28 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 10 May 2018 12:33:31 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 27 Jun 2018 12:18:41 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 27 Jun 2018 12:19:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:5cfaa4da19b28ddccd90451f5ae54473b5b26e45c45609c0dcdad13c101379d8`  
		Last Modified: Thu, 10 May 2018 12:51:15 GMT  
		Size: 57.2 MB (57245515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2314af60f06d14108eaacf9772375927084fe0c8bb3328e4da6b40c054fa1ba`  
		Last Modified: Thu, 10 May 2018 12:50:59 GMT  
		Size: 200.4 KB (200398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dffa0a72755dcae2ae48bb2e771e5ba09b2bbd78e080633492e37567f5f231a`  
		Last Modified: Wed, 27 Jun 2018 12:23:18 GMT  
		Size: 3.4 MB (3397263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4.9-slim`

```console
$ docker pull erlang@sha256:bdac2ee41111463b7456014ac0c53b3a200318c909d9e4a0950dd75e1922c663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4.9-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bf069ad97dc68ae3c4a13535e99623f510a998be23ddd4a24a82754d4122f2b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119940884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3abc8fdb7ad0d83eb1a8c2ea5c6cdea2204a6c528b9e1f464f796dfaf30b9d5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:27:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:36:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cad821fc430a5f357ab5f0ef969f097913eb068384d711b8ab72eb1848a980`  
		Last Modified: Wed, 05 Sep 2018 00:55:34 GMT  
		Size: 65.7 MB (65688673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:6b0197c32ea60bdf1b4bb04318edfbea6bdadfc0bde4cfe9eb74cd8db84aa847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111547646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93ba46dd4c13e0a63ce538908ff80879cf2492204d7a12fb718e320c4bc53d1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:12:57 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:19:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:19:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e57c5337fa05fa6b0e09c63f1ca9e3e94c3916379a22487afc356a4838285a`  
		Last Modified: Wed, 05 Sep 2018 13:39:11 GMT  
		Size: 61.4 MB (61359258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:62862b1e8990cfbb5808ce6b2f469f3322d4c7454116ad43b73fbe15f527cf09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114043590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4399e1dd8e72dd9ceaac701054fd681289163243de65470170890f7aac4f1679`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:37:23 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 01 May 2018 10:52:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 01 May 2018 10:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242a3aa8b2a9cca53b72404db5008ada993dff7faaca8b5245ed6e08fa7763b3`  
		Last Modified: Tue, 01 May 2018 11:27:18 GMT  
		Size: 62.6 MB (62596736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9-slim` - linux; 386

```console
$ docker pull erlang@sha256:87ca17f6adcbb87fb2b8ecfea2597a98761f16ccef7e58a1fb852a3303186f06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123914309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3e24a77cf52dbec177566eaa4a3b423cd64ea852a0e7bc2eb3a3f6085a47e4`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:37:05 GMT
ENV OTP_VERSION=18.3.4.9
# Fri, 07 Sep 2018 05:04:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:04:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b628807f68fa3a12a01e73d624a4315005c8a3004a11b5d295b93d9b08fa37ee`  
		Last Modified: Fri, 07 Sep 2018 05:21:14 GMT  
		Size: 69.4 MB (69430258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.9-slim` - linux; s390x

```console
$ docker pull erlang@sha256:910020fccef04b267a99b606fc7a0065cd599c52fa2f637911e0b0542add0a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118528675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751449438122ecf457c3ab02c59dfdc001803de08ff11c8747fff7b1029266e9`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:30:40 GMT
ENV OTP_VERSION=18.3.4.9
# Sat, 28 Apr 2018 12:40:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:40:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cea10b80fbc73243dba9d48dfe6686b5b1c5e5aa05d94cf92b113d8e5b050a`  
		Last Modified: Sat, 28 Apr 2018 12:52:50 GMT  
		Size: 64.1 MB (64062818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4-slim`

```console
$ docker pull erlang@sha256:bdac2ee41111463b7456014ac0c53b3a200318c909d9e4a0950dd75e1922c663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bf069ad97dc68ae3c4a13535e99623f510a998be23ddd4a24a82754d4122f2b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119940884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3abc8fdb7ad0d83eb1a8c2ea5c6cdea2204a6c528b9e1f464f796dfaf30b9d5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:27:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:36:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cad821fc430a5f357ab5f0ef969f097913eb068384d711b8ab72eb1848a980`  
		Last Modified: Wed, 05 Sep 2018 00:55:34 GMT  
		Size: 65.7 MB (65688673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:6b0197c32ea60bdf1b4bb04318edfbea6bdadfc0bde4cfe9eb74cd8db84aa847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111547646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93ba46dd4c13e0a63ce538908ff80879cf2492204d7a12fb718e320c4bc53d1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:12:57 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:19:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:19:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e57c5337fa05fa6b0e09c63f1ca9e3e94c3916379a22487afc356a4838285a`  
		Last Modified: Wed, 05 Sep 2018 13:39:11 GMT  
		Size: 61.4 MB (61359258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:62862b1e8990cfbb5808ce6b2f469f3322d4c7454116ad43b73fbe15f527cf09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114043590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4399e1dd8e72dd9ceaac701054fd681289163243de65470170890f7aac4f1679`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:37:23 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 01 May 2018 10:52:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 01 May 2018 10:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242a3aa8b2a9cca53b72404db5008ada993dff7faaca8b5245ed6e08fa7763b3`  
		Last Modified: Tue, 01 May 2018 11:27:18 GMT  
		Size: 62.6 MB (62596736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; 386

```console
$ docker pull erlang@sha256:87ca17f6adcbb87fb2b8ecfea2597a98761f16ccef7e58a1fb852a3303186f06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123914309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3e24a77cf52dbec177566eaa4a3b423cd64ea852a0e7bc2eb3a3f6085a47e4`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:37:05 GMT
ENV OTP_VERSION=18.3.4.9
# Fri, 07 Sep 2018 05:04:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:04:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b628807f68fa3a12a01e73d624a4315005c8a3004a11b5d295b93d9b08fa37ee`  
		Last Modified: Fri, 07 Sep 2018 05:21:14 GMT  
		Size: 69.4 MB (69430258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; s390x

```console
$ docker pull erlang@sha256:910020fccef04b267a99b606fc7a0065cd599c52fa2f637911e0b0542add0a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118528675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751449438122ecf457c3ab02c59dfdc001803de08ff11c8747fff7b1029266e9`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:30:40 GMT
ENV OTP_VERSION=18.3.4.9
# Sat, 28 Apr 2018 12:40:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:40:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cea10b80fbc73243dba9d48dfe6686b5b1c5e5aa05d94cf92b113d8e5b050a`  
		Last Modified: Sat, 28 Apr 2018 12:52:50 GMT  
		Size: 64.1 MB (64062818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3-slim`

```console
$ docker pull erlang@sha256:bdac2ee41111463b7456014ac0c53b3a200318c909d9e4a0950dd75e1922c663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bf069ad97dc68ae3c4a13535e99623f510a998be23ddd4a24a82754d4122f2b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119940884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3abc8fdb7ad0d83eb1a8c2ea5c6cdea2204a6c528b9e1f464f796dfaf30b9d5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:27:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:36:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cad821fc430a5f357ab5f0ef969f097913eb068384d711b8ab72eb1848a980`  
		Last Modified: Wed, 05 Sep 2018 00:55:34 GMT  
		Size: 65.7 MB (65688673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:6b0197c32ea60bdf1b4bb04318edfbea6bdadfc0bde4cfe9eb74cd8db84aa847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111547646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93ba46dd4c13e0a63ce538908ff80879cf2492204d7a12fb718e320c4bc53d1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:12:57 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:19:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:19:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e57c5337fa05fa6b0e09c63f1ca9e3e94c3916379a22487afc356a4838285a`  
		Last Modified: Wed, 05 Sep 2018 13:39:11 GMT  
		Size: 61.4 MB (61359258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:62862b1e8990cfbb5808ce6b2f469f3322d4c7454116ad43b73fbe15f527cf09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114043590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4399e1dd8e72dd9ceaac701054fd681289163243de65470170890f7aac4f1679`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:37:23 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 01 May 2018 10:52:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 01 May 2018 10:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242a3aa8b2a9cca53b72404db5008ada993dff7faaca8b5245ed6e08fa7763b3`  
		Last Modified: Tue, 01 May 2018 11:27:18 GMT  
		Size: 62.6 MB (62596736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; 386

```console
$ docker pull erlang@sha256:87ca17f6adcbb87fb2b8ecfea2597a98761f16ccef7e58a1fb852a3303186f06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123914309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3e24a77cf52dbec177566eaa4a3b423cd64ea852a0e7bc2eb3a3f6085a47e4`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:37:05 GMT
ENV OTP_VERSION=18.3.4.9
# Fri, 07 Sep 2018 05:04:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:04:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b628807f68fa3a12a01e73d624a4315005c8a3004a11b5d295b93d9b08fa37ee`  
		Last Modified: Fri, 07 Sep 2018 05:21:14 GMT  
		Size: 69.4 MB (69430258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; s390x

```console
$ docker pull erlang@sha256:910020fccef04b267a99b606fc7a0065cd599c52fa2f637911e0b0542add0a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118528675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751449438122ecf457c3ab02c59dfdc001803de08ff11c8747fff7b1029266e9`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:30:40 GMT
ENV OTP_VERSION=18.3.4.9
# Sat, 28 Apr 2018 12:40:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:40:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cea10b80fbc73243dba9d48dfe6686b5b1c5e5aa05d94cf92b113d8e5b050a`  
		Last Modified: Sat, 28 Apr 2018 12:52:50 GMT  
		Size: 64.1 MB (64062818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18-slim`

```console
$ docker pull erlang@sha256:bdac2ee41111463b7456014ac0c53b3a200318c909d9e4a0950dd75e1922c663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bf069ad97dc68ae3c4a13535e99623f510a998be23ddd4a24a82754d4122f2b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119940884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3abc8fdb7ad0d83eb1a8c2ea5c6cdea2204a6c528b9e1f464f796dfaf30b9d5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:27:02 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 00:36:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:36:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cad821fc430a5f357ab5f0ef969f097913eb068384d711b8ab72eb1848a980`  
		Last Modified: Wed, 05 Sep 2018 00:55:34 GMT  
		Size: 65.7 MB (65688673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:6b0197c32ea60bdf1b4bb04318edfbea6bdadfc0bde4cfe9eb74cd8db84aa847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111547646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93ba46dd4c13e0a63ce538908ff80879cf2492204d7a12fb718e320c4bc53d1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:12:57 GMT
ENV OTP_VERSION=18.3.4.9
# Wed, 05 Sep 2018 13:19:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:19:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e57c5337fa05fa6b0e09c63f1ca9e3e94c3916379a22487afc356a4838285a`  
		Last Modified: Wed, 05 Sep 2018 13:39:11 GMT  
		Size: 61.4 MB (61359258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:62862b1e8990cfbb5808ce6b2f469f3322d4c7454116ad43b73fbe15f527cf09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114043590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4399e1dd8e72dd9ceaac701054fd681289163243de65470170890f7aac4f1679`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:37:23 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 01 May 2018 10:52:29 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 01 May 2018 10:52:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242a3aa8b2a9cca53b72404db5008ada993dff7faaca8b5245ed6e08fa7763b3`  
		Last Modified: Tue, 01 May 2018 11:27:18 GMT  
		Size: 62.6 MB (62596736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; 386

```console
$ docker pull erlang@sha256:87ca17f6adcbb87fb2b8ecfea2597a98761f16ccef7e58a1fb852a3303186f06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123914309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3e24a77cf52dbec177566eaa4a3b423cd64ea852a0e7bc2eb3a3f6085a47e4`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 16:37:05 GMT
ENV OTP_VERSION=18.3.4.9
# Fri, 07 Sep 2018 05:04:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 05:04:41 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b628807f68fa3a12a01e73d624a4315005c8a3004a11b5d295b93d9b08fa37ee`  
		Last Modified: Fri, 07 Sep 2018 05:21:14 GMT  
		Size: 69.4 MB (69430258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; s390x

```console
$ docker pull erlang@sha256:910020fccef04b267a99b606fc7a0065cd599c52fa2f637911e0b0542add0a2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118528675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751449438122ecf457c3ab02c59dfdc001803de08ff11c8747fff7b1029266e9`
-	Default Command: `["erl"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:30:40 GMT
ENV OTP_VERSION=18.3.4.9
# Sat, 28 Apr 2018 12:40:17 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:40:18 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cea10b80fbc73243dba9d48dfe6686b5b1c5e5aa05d94cf92b113d8e5b050a`  
		Last Modified: Sat, 28 Apr 2018 12:52:50 GMT  
		Size: 64.1 MB (64062818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19`

```console
$ docker pull erlang@sha256:1f3a6473771ec5d5abfe56808f05b7a70e399e5b81693cfe4fc26a3af0bdb116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19` - linux; amd64

```console
$ docker pull erlang@sha256:83523bca83e5e1512645c3b3864f453f8db919b78d31189f9c39fee9bde20f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394544472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a13a0b5e839b28575203bf34d56a70c0c3a0f11f8f0c2ec7875182c41ceec72`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:52:05 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:05:14 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:05:14 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:05:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:05:17 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:05:41 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773eaf5c7af15d4f5579aa7c9790a7815060e009e4e9e642b5aeaef597dcb748`  
		Last Modified: Wed, 05 Sep 2018 00:54:32 GMT  
		Size: 144.6 MB (144567384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c289e32f571814b233e5382d3c04fac5e122f6114d70a47c52730b5091eb9707`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 199.2 KB (199210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57ed4dcc21b1c6b4fad698dfdcdd765613bf642c71645e23842714c78ee0393`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 3.6 MB (3584219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a85a66f219174e6d1decfd0ad67c072af879ec0144602de0a0667208bd27fef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362157429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c818bfca8068cf4ece7fdab9bb5e58d4044efe7e7ca5edf4f3a24cb7ca15aed3`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 12:46:32 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 12:56:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:06 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:57:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:19de78b6e54a67c3bc9c22769c591c0c556bc50e3288e05d71c0927c1189612e`  
		Last Modified: Wed, 05 Sep 2018 13:36:05 GMT  
		Size: 137.6 MB (137615942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4c3ab68c008e5abfcf5b916d8618601c19e86d1432fb06e28edf9082990c4`  
		Last Modified: Wed, 05 Sep 2018 13:35:37 GMT  
		Size: 199.2 KB (199229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506300be017789c5754d0569325566019f82bb1c8dd7aafb3ec816f01791ede`  
		Last Modified: Wed, 05 Sep 2018 13:35:38 GMT  
		Size: 3.6 MB (3584318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19` - linux; 386

```console
$ docker pull erlang@sha256:4db525bb8267670269d967c135e0a83550584c04a20c20c7e949086e820dc2f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397580788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333fbd9e66f36109f1412589ea49580ddb558bf5f57740296d2dc5c9911e20d7`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:42 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 15:28:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:28:42 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 15:28:42 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 15:28:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 15:28:50 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 15:29:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d61ddf27e42d25f5dca9f4e23dd6356f8152847890cfe7fa410b6e036c1ffb`  
		Last Modified: Wed, 05 Sep 2018 17:02:53 GMT  
		Size: 140.3 MB (140344228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894971599fb80f80ec251ccc04abc0c4ca3f8700a53961412b27acff0520297`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 199.2 KB (199206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7944b8ab46b8c083695c66715d054a66de8bc8231bf2b66171155892b35fb`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 3.6 MB (3585383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3`

```console
$ docker pull erlang@sha256:1f3a6473771ec5d5abfe56808f05b7a70e399e5b81693cfe4fc26a3af0bdb116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3` - linux; amd64

```console
$ docker pull erlang@sha256:83523bca83e5e1512645c3b3864f453f8db919b78d31189f9c39fee9bde20f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394544472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a13a0b5e839b28575203bf34d56a70c0c3a0f11f8f0c2ec7875182c41ceec72`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:52:05 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:05:14 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:05:14 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:05:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:05:17 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:05:41 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773eaf5c7af15d4f5579aa7c9790a7815060e009e4e9e642b5aeaef597dcb748`  
		Last Modified: Wed, 05 Sep 2018 00:54:32 GMT  
		Size: 144.6 MB (144567384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c289e32f571814b233e5382d3c04fac5e122f6114d70a47c52730b5091eb9707`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 199.2 KB (199210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57ed4dcc21b1c6b4fad698dfdcdd765613bf642c71645e23842714c78ee0393`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 3.6 MB (3584219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a85a66f219174e6d1decfd0ad67c072af879ec0144602de0a0667208bd27fef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362157429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c818bfca8068cf4ece7fdab9bb5e58d4044efe7e7ca5edf4f3a24cb7ca15aed3`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 12:46:32 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 12:56:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:06 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:57:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:19de78b6e54a67c3bc9c22769c591c0c556bc50e3288e05d71c0927c1189612e`  
		Last Modified: Wed, 05 Sep 2018 13:36:05 GMT  
		Size: 137.6 MB (137615942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4c3ab68c008e5abfcf5b916d8618601c19e86d1432fb06e28edf9082990c4`  
		Last Modified: Wed, 05 Sep 2018 13:35:37 GMT  
		Size: 199.2 KB (199229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506300be017789c5754d0569325566019f82bb1c8dd7aafb3ec816f01791ede`  
		Last Modified: Wed, 05 Sep 2018 13:35:38 GMT  
		Size: 3.6 MB (3584318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3` - linux; 386

```console
$ docker pull erlang@sha256:4db525bb8267670269d967c135e0a83550584c04a20c20c7e949086e820dc2f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397580788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333fbd9e66f36109f1412589ea49580ddb558bf5f57740296d2dc5c9911e20d7`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:42 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 15:28:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:28:42 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 15:28:42 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 15:28:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 15:28:50 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 15:29:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d61ddf27e42d25f5dca9f4e23dd6356f8152847890cfe7fa410b6e036c1ffb`  
		Last Modified: Wed, 05 Sep 2018 17:02:53 GMT  
		Size: 140.3 MB (140344228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894971599fb80f80ec251ccc04abc0c4ca3f8700a53961412b27acff0520297`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 199.2 KB (199206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7944b8ab46b8c083695c66715d054a66de8bc8231bf2b66171155892b35fb`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 3.6 MB (3585383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6`

```console
$ docker pull erlang@sha256:1f3a6473771ec5d5abfe56808f05b7a70e399e5b81693cfe4fc26a3af0bdb116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3.6` - linux; amd64

```console
$ docker pull erlang@sha256:83523bca83e5e1512645c3b3864f453f8db919b78d31189f9c39fee9bde20f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394544472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a13a0b5e839b28575203bf34d56a70c0c3a0f11f8f0c2ec7875182c41ceec72`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:52:05 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:05:14 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:05:14 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:05:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:05:17 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:05:41 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773eaf5c7af15d4f5579aa7c9790a7815060e009e4e9e642b5aeaef597dcb748`  
		Last Modified: Wed, 05 Sep 2018 00:54:32 GMT  
		Size: 144.6 MB (144567384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c289e32f571814b233e5382d3c04fac5e122f6114d70a47c52730b5091eb9707`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 199.2 KB (199210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57ed4dcc21b1c6b4fad698dfdcdd765613bf642c71645e23842714c78ee0393`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 3.6 MB (3584219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a85a66f219174e6d1decfd0ad67c072af879ec0144602de0a0667208bd27fef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362157429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c818bfca8068cf4ece7fdab9bb5e58d4044efe7e7ca5edf4f3a24cb7ca15aed3`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 12:46:32 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 12:56:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:06 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:57:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:19de78b6e54a67c3bc9c22769c591c0c556bc50e3288e05d71c0927c1189612e`  
		Last Modified: Wed, 05 Sep 2018 13:36:05 GMT  
		Size: 137.6 MB (137615942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4c3ab68c008e5abfcf5b916d8618601c19e86d1432fb06e28edf9082990c4`  
		Last Modified: Wed, 05 Sep 2018 13:35:37 GMT  
		Size: 199.2 KB (199229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506300be017789c5754d0569325566019f82bb1c8dd7aafb3ec816f01791ede`  
		Last Modified: Wed, 05 Sep 2018 13:35:38 GMT  
		Size: 3.6 MB (3584318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6` - linux; 386

```console
$ docker pull erlang@sha256:4db525bb8267670269d967c135e0a83550584c04a20c20c7e949086e820dc2f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397580788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333fbd9e66f36109f1412589ea49580ddb558bf5f57740296d2dc5c9911e20d7`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:42 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 15:28:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:28:42 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 15:28:42 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 15:28:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 15:28:50 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 15:29:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d61ddf27e42d25f5dca9f4e23dd6356f8152847890cfe7fa410b6e036c1ffb`  
		Last Modified: Wed, 05 Sep 2018 17:02:53 GMT  
		Size: 140.3 MB (140344228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894971599fb80f80ec251ccc04abc0c4ca3f8700a53961412b27acff0520297`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 199.2 KB (199206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7944b8ab46b8c083695c66715d054a66de8bc8231bf2b66171155892b35fb`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 3.6 MB (3585383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6.10`

```console
$ docker pull erlang@sha256:1f3a6473771ec5d5abfe56808f05b7a70e399e5b81693cfe4fc26a3af0bdb116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3.6.10` - linux; amd64

```console
$ docker pull erlang@sha256:83523bca83e5e1512645c3b3864f453f8db919b78d31189f9c39fee9bde20f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394544472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a13a0b5e839b28575203bf34d56a70c0c3a0f11f8f0c2ec7875182c41ceec72`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:52:05 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:05:14 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 00:05:14 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 00:05:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 00:05:17 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 00:05:41 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773eaf5c7af15d4f5579aa7c9790a7815060e009e4e9e642b5aeaef597dcb748`  
		Last Modified: Wed, 05 Sep 2018 00:54:32 GMT  
		Size: 144.6 MB (144567384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c289e32f571814b233e5382d3c04fac5e122f6114d70a47c52730b5091eb9707`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 199.2 KB (199210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57ed4dcc21b1c6b4fad698dfdcdd765613bf642c71645e23842714c78ee0393`  
		Last Modified: Wed, 05 Sep 2018 00:54:15 GMT  
		Size: 3.6 MB (3584219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.10` - linux; arm variant v7

```console
$ docker pull erlang@sha256:a85a66f219174e6d1decfd0ad67c072af879ec0144602de0a0667208bd27fef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362157429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c818bfca8068cf4ece7fdab9bb5e58d4044efe7e7ca5edf4f3a24cb7ca15aed3`
-	Default Command: `["erl"]`

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
# Wed, 05 Sep 2018 12:46:32 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 12:56:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:00 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:00 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:05 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:06 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:57:45 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
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
	-	`sha256:19de78b6e54a67c3bc9c22769c591c0c556bc50e3288e05d71c0927c1189612e`  
		Last Modified: Wed, 05 Sep 2018 13:36:05 GMT  
		Size: 137.6 MB (137615942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e4c3ab68c008e5abfcf5b916d8618601c19e86d1432fb06e28edf9082990c4`  
		Last Modified: Wed, 05 Sep 2018 13:35:37 GMT  
		Size: 199.2 KB (199229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506300be017789c5754d0569325566019f82bb1c8dd7aafb3ec816f01791ede`  
		Last Modified: Wed, 05 Sep 2018 13:35:38 GMT  
		Size: 3.6 MB (3584318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.10` - linux; 386

```console
$ docker pull erlang@sha256:4db525bb8267670269d967c135e0a83550584c04a20c20c7e949086e820dc2f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397580788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333fbd9e66f36109f1412589ea49580ddb558bf5f57740296d2dc5c9911e20d7`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:42 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 15:28:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:28:42 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 15:28:42 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 15:28:49 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 15:28:50 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 15:29:39 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d61ddf27e42d25f5dca9f4e23dd6356f8152847890cfe7fa410b6e036c1ffb`  
		Last Modified: Wed, 05 Sep 2018 17:02:53 GMT  
		Size: 140.3 MB (140344228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894971599fb80f80ec251ccc04abc0c4ca3f8700a53961412b27acff0520297`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 199.2 KB (199206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7944b8ab46b8c083695c66715d054a66de8bc8231bf2b66171155892b35fb`  
		Last Modified: Wed, 05 Sep 2018 17:02:05 GMT  
		Size: 3.6 MB (3585383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6.10-slim`

```console
$ docker pull erlang@sha256:a80c75a31066fdeaa06482ed0bdb2e99e6be63d54fc0ed02c6d3371c8a161643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3.6.10-slim` - linux; amd64

```console
$ docker pull erlang@sha256:deaf6bd705e2e7ad48ed2173cb0593fc8e5687726557bbdfdafb7996906f9c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217564608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba58e981c54d2ba2c0d896bf30da4f714677787c92f95e208666678bde9ce5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:05:46 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:17:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385ea04730c426bc4718bd45641d8dfcbbe900f0c4f4c30979c3aa0f206e806`  
		Last Modified: Wed, 05 Sep 2018 00:54:58 GMT  
		Size: 163.3 MB (163312397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.10-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:ac58aa29e86a9018eb11d525080bf67cd3c83c60a0495a9cf1eaf936670b3617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204424069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2faeaf1290b2e6f2ce552ceaab544c91322d2c706c3939ad702deb54e183c7d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:03 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 13:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:05:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad777c7f5cdfb9851791bfca1153f8815b5bd8e9f90ddbc9015032ff20f71c8a`  
		Last Modified: Wed, 05 Sep 2018 13:37:15 GMT  
		Size: 154.2 MB (154235681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.10-slim` - linux; 386

```console
$ docker pull erlang@sha256:6e9f8472560def6a27f9384bbfc53c1415d2326cce12db12f94734098d9aab00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218659263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b9f444b785ce0e632aaccdec58d12ae6543b65e74e9c6133c613a194ceacd3`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:29:56 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 16:08:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374238ed05d2aecebbfe53dcb9141f7bb46bff35d021774533ffc1d79b84d4d5`  
		Last Modified: Wed, 05 Sep 2018 17:04:09 GMT  
		Size: 164.2 MB (164175212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6-slim`

```console
$ docker pull erlang@sha256:a80c75a31066fdeaa06482ed0bdb2e99e6be63d54fc0ed02c6d3371c8a161643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3.6-slim` - linux; amd64

```console
$ docker pull erlang@sha256:deaf6bd705e2e7ad48ed2173cb0593fc8e5687726557bbdfdafb7996906f9c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217564608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba58e981c54d2ba2c0d896bf30da4f714677787c92f95e208666678bde9ce5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:05:46 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:17:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385ea04730c426bc4718bd45641d8dfcbbe900f0c4f4c30979c3aa0f206e806`  
		Last Modified: Wed, 05 Sep 2018 00:54:58 GMT  
		Size: 163.3 MB (163312397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:ac58aa29e86a9018eb11d525080bf67cd3c83c60a0495a9cf1eaf936670b3617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204424069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2faeaf1290b2e6f2ce552ceaab544c91322d2c706c3939ad702deb54e183c7d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:03 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 13:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:05:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad777c7f5cdfb9851791bfca1153f8815b5bd8e9f90ddbc9015032ff20f71c8a`  
		Last Modified: Wed, 05 Sep 2018 13:37:15 GMT  
		Size: 154.2 MB (154235681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6-slim` - linux; 386

```console
$ docker pull erlang@sha256:6e9f8472560def6a27f9384bbfc53c1415d2326cce12db12f94734098d9aab00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218659263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b9f444b785ce0e632aaccdec58d12ae6543b65e74e9c6133c613a194ceacd3`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:29:56 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 16:08:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374238ed05d2aecebbfe53dcb9141f7bb46bff35d021774533ffc1d79b84d4d5`  
		Last Modified: Wed, 05 Sep 2018 17:04:09 GMT  
		Size: 164.2 MB (164175212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3-slim`

```console
$ docker pull erlang@sha256:a80c75a31066fdeaa06482ed0bdb2e99e6be63d54fc0ed02c6d3371c8a161643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19.3-slim` - linux; amd64

```console
$ docker pull erlang@sha256:deaf6bd705e2e7ad48ed2173cb0593fc8e5687726557bbdfdafb7996906f9c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217564608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba58e981c54d2ba2c0d896bf30da4f714677787c92f95e208666678bde9ce5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:05:46 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:17:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385ea04730c426bc4718bd45641d8dfcbbe900f0c4f4c30979c3aa0f206e806`  
		Last Modified: Wed, 05 Sep 2018 00:54:58 GMT  
		Size: 163.3 MB (163312397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:ac58aa29e86a9018eb11d525080bf67cd3c83c60a0495a9cf1eaf936670b3617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204424069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2faeaf1290b2e6f2ce552ceaab544c91322d2c706c3939ad702deb54e183c7d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:03 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 13:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:05:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad777c7f5cdfb9851791bfca1153f8815b5bd8e9f90ddbc9015032ff20f71c8a`  
		Last Modified: Wed, 05 Sep 2018 13:37:15 GMT  
		Size: 154.2 MB (154235681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3-slim` - linux; 386

```console
$ docker pull erlang@sha256:6e9f8472560def6a27f9384bbfc53c1415d2326cce12db12f94734098d9aab00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218659263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b9f444b785ce0e632aaccdec58d12ae6543b65e74e9c6133c613a194ceacd3`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:29:56 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 16:08:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374238ed05d2aecebbfe53dcb9141f7bb46bff35d021774533ffc1d79b84d4d5`  
		Last Modified: Wed, 05 Sep 2018 17:04:09 GMT  
		Size: 164.2 MB (164175212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19-slim`

```console
$ docker pull erlang@sha256:a80c75a31066fdeaa06482ed0bdb2e99e6be63d54fc0ed02c6d3371c8a161643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `erlang:19-slim` - linux; amd64

```console
$ docker pull erlang@sha256:deaf6bd705e2e7ad48ed2173cb0593fc8e5687726557bbdfdafb7996906f9c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217564608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba58e981c54d2ba2c0d896bf30da4f714677787c92f95e208666678bde9ce5`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:05:46 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 00:17:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:17:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7385ea04730c426bc4718bd45641d8dfcbbe900f0c4f4c30979c3aa0f206e806`  
		Last Modified: Wed, 05 Sep 2018 00:54:58 GMT  
		Size: 163.3 MB (163312397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:ac58aa29e86a9018eb11d525080bf67cd3c83c60a0495a9cf1eaf936670b3617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204424069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2faeaf1290b2e6f2ce552ceaab544c91322d2c706c3939ad702deb54e183c7d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:03 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 13:05:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:05:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad777c7f5cdfb9851791bfca1153f8815b5bd8e9f90ddbc9015032ff20f71c8a`  
		Last Modified: Wed, 05 Sep 2018 13:37:15 GMT  
		Size: 154.2 MB (154235681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19-slim` - linux; 386

```console
$ docker pull erlang@sha256:6e9f8472560def6a27f9384bbfc53c1415d2326cce12db12f94734098d9aab00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218659263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b9f444b785ce0e632aaccdec58d12ae6543b65e74e9c6133c613a194ceacd3`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:29:56 GMT
ENV OTP_VERSION=19.3.6.10
# Wed, 05 Sep 2018 16:08:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1185dd3f8d4b642fee25d45dfa28e1f19821a2ea6bb1a371b21d10bd72ffdff5" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:08:24 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374238ed05d2aecebbfe53dcb9141f7bb46bff35d021774533ffc1d79b84d4d5`  
		Last Modified: Wed, 05 Sep 2018 17:04:09 GMT  
		Size: 164.2 MB (164175212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20`

```console
$ docker pull erlang@sha256:29c57a0755be10a82123a6264f47fd3465f84e5baa8a36c5ed27bb919ad1813f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20` - linux; amd64

```console
$ docker pull erlang@sha256:1f4bfb1d01fbb43baf4a436272d65d451230c2ec0e128a3a1faf630ac1be9217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464557433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e96be278e20c8d48a815edb2c924c8f830e27c2a6ac7f4372d2270ecf83420c`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:29:46 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:41:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:41:40 GMT
CMD ["erl"]
# Tue, 04 Sep 2018 23:41:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 04 Sep 2018 23:41:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 04 Sep 2018 23:41:44 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 04 Sep 2018 23:42:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5213beed4a26e61870f622db37ad43e6220d592cdf5a9fd428a9e2c6fee50e`  
		Last Modified: Wed, 05 Sep 2018 00:53:44 GMT  
		Size: 137.1 MB (137094054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e24ec9562895f4de1cf2291884494742e9eceb4ed2b10e766ad3acea285fd3`  
		Last Modified: Wed, 05 Sep 2018 00:53:26 GMT  
		Size: 201.5 KB (201494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc7234aeea00a8a39448e3acc644a08e6cba8ae09e64fa643447c8462e6d919`  
		Last Modified: Wed, 05 Sep 2018 00:53:28 GMT  
		Size: 3.6 MB (3601062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; arm variant v7

```console
$ docker pull erlang@sha256:7a20dafab289a73893355e929ee802b95845990842cee412daf84babe5c0fd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.5 MB (429472743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb8a2d1f8cfd0f8cbbf3e3e2a15b6fd71dfb45c2ff8510b56d4b09e6d933fa0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:27:17 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 17:36:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:36:46 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 17:36:47 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 17:36:51 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 17:36:52 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 17:37:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d2c9662db97e9ff3215d0ccc0331924b0d557ba30310d55da49c4e081d5fd4`  
		Last Modified: Wed, 05 Sep 2018 17:39:46 GMT  
		Size: 129.9 MB (129870494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cfbc70ad58e975afc627caf93abb3d5ecdc04e742bbc66d0f4891bc47bd14`  
		Last Modified: Wed, 05 Sep 2018 17:39:22 GMT  
		Size: 201.5 KB (201534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fdfefa79aeb08c32bf88b763db28858bed88d924ab27b7e17d28ec6725ee9`  
		Last Modified: Wed, 05 Sep 2018 17:39:23 GMT  
		Size: 3.6 MB (3602417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:bfd18b867f0f6ff759521ee94475b5451ffffbf08eb860cfecf9ee3138340793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.6 MB (442589721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ff4bc9c5ec809ff29e2ca976f9eeb217dd868000d9598fb772188b3cedc1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:45:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 23:01:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:01:09 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 23:01:10 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 23:01:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 23:01:18 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 23:02:17 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4391fc979514578313c92d7eab4d3b1852b5cfaa51f633f11f57792d58d7149`  
		Last Modified: Wed, 05 Sep 2018 23:09:22 GMT  
		Size: 133.3 MB (133254088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9734ac69353f563d2a0b384a1e924f98dba69dd1cbc3705b0cd9f4c594d1358`  
		Last Modified: Wed, 05 Sep 2018 23:08:56 GMT  
		Size: 201.5 KB (201503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2c5e37ab42eb8cff7b0a87f9cb59efcc341efa17adff8055bb956b7b2575`  
		Last Modified: Wed, 05 Sep 2018 23:08:55 GMT  
		Size: 3.6 MB (3602689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; 386

```console
$ docker pull erlang@sha256:afd60d5e03debbbd4e3dfa5b2bf37ddc154a224d405fae7ea063aeba8fe92d9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468914115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1673533803ab07f73ffee9367563d74d95b771d3e53846aa08e3c4c96950d454`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:34:42 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:11:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:11:53 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 14:11:53 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 14:12:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 14:12:07 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 14:12:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ead89644a347a10211a46649eeee245c707e1ff6d8b05bd33c02966e7c20ef`  
		Last Modified: Wed, 05 Sep 2018 17:01:03 GMT  
		Size: 133.9 MB (133914360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f603d12259844ba51b92a9f769e735890a0cb8938f46e1b8390e652bf69f4050`  
		Last Modified: Wed, 05 Sep 2018 17:00:10 GMT  
		Size: 201.5 KB (201518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e8d8c15cec6c7cb5e2c35f5e4aa5b4ae848d0df698a9eabbe15a01cb60f164`  
		Last Modified: Wed, 05 Sep 2018 17:00:12 GMT  
		Size: 3.6 MB (3601432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; ppc64le

```console
$ docker pull erlang@sha256:28c641839dc91c3cf4eb96d2910e01f19fabb451f0102f2a0e54c8dd69b1b235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457174142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82389a1b674d84ff7734cf330f7ae79c78f2669257a13b181ed4e14607e0192a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:13:02 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:22:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:22:40 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 09:22:41 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 09:22:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 09:22:48 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 09:23:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc77eb55401d438cda940fb0e23e65571522e2c76165468a184d56f13270149`  
		Last Modified: Wed, 05 Sep 2018 09:34:17 GMT  
		Size: 134.6 MB (134620955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1fe1315b2b157085e91c1614fb437b9407c0f16b0619ed46d903529dba4c`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 201.5 KB (201521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eef1c88c2f278e07fc8abdcd561cd2b7f6e88c5f761f6b557fb6746728d48c1`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 3.6 MB (3601441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; s390x

```console
$ docker pull erlang@sha256:9f66ae1752a059f0deb0b057e9617c376207e5836bc2130d0735c20cd267e03d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457379442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e7fe9c619b9584d5deaff757a37bd633463bb553e55f3c713a061feff3e93`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:50:25 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:57:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:50 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:52 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:56 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:58:15 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04ea93039ba4a8690e70aada484ca955e328dbc469e2325469f70e92ba6d54`  
		Last Modified: Wed, 05 Sep 2018 13:07:33 GMT  
		Size: 138.0 MB (138038867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fb9701662602a12b3b0dab4a431d9c1dd97316cabb3edd0a32dad5ca116697`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 201.5 KB (201524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b73aca5b73864574ce7c3c194ed135c9e7e0e221941df98f47c56e1ccbd707`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 3.6 MB (3601180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3`

```console
$ docker pull erlang@sha256:29c57a0755be10a82123a6264f47fd3465f84e5baa8a36c5ed27bb919ad1813f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3` - linux; amd64

```console
$ docker pull erlang@sha256:1f4bfb1d01fbb43baf4a436272d65d451230c2ec0e128a3a1faf630ac1be9217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464557433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e96be278e20c8d48a815edb2c924c8f830e27c2a6ac7f4372d2270ecf83420c`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:29:46 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:41:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:41:40 GMT
CMD ["erl"]
# Tue, 04 Sep 2018 23:41:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 04 Sep 2018 23:41:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 04 Sep 2018 23:41:44 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 04 Sep 2018 23:42:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5213beed4a26e61870f622db37ad43e6220d592cdf5a9fd428a9e2c6fee50e`  
		Last Modified: Wed, 05 Sep 2018 00:53:44 GMT  
		Size: 137.1 MB (137094054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e24ec9562895f4de1cf2291884494742e9eceb4ed2b10e766ad3acea285fd3`  
		Last Modified: Wed, 05 Sep 2018 00:53:26 GMT  
		Size: 201.5 KB (201494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc7234aeea00a8a39448e3acc644a08e6cba8ae09e64fa643447c8462e6d919`  
		Last Modified: Wed, 05 Sep 2018 00:53:28 GMT  
		Size: 3.6 MB (3601062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3` - linux; arm variant v7

```console
$ docker pull erlang@sha256:7a20dafab289a73893355e929ee802b95845990842cee412daf84babe5c0fd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.5 MB (429472743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb8a2d1f8cfd0f8cbbf3e3e2a15b6fd71dfb45c2ff8510b56d4b09e6d933fa0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:27:17 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 17:36:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:36:46 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 17:36:47 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 17:36:51 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 17:36:52 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 17:37:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d2c9662db97e9ff3215d0ccc0331924b0d557ba30310d55da49c4e081d5fd4`  
		Last Modified: Wed, 05 Sep 2018 17:39:46 GMT  
		Size: 129.9 MB (129870494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cfbc70ad58e975afc627caf93abb3d5ecdc04e742bbc66d0f4891bc47bd14`  
		Last Modified: Wed, 05 Sep 2018 17:39:22 GMT  
		Size: 201.5 KB (201534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fdfefa79aeb08c32bf88b763db28858bed88d924ab27b7e17d28ec6725ee9`  
		Last Modified: Wed, 05 Sep 2018 17:39:23 GMT  
		Size: 3.6 MB (3602417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:bfd18b867f0f6ff759521ee94475b5451ffffbf08eb860cfecf9ee3138340793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.6 MB (442589721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ff4bc9c5ec809ff29e2ca976f9eeb217dd868000d9598fb772188b3cedc1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:45:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 23:01:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:01:09 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 23:01:10 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 23:01:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 23:01:18 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 23:02:17 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4391fc979514578313c92d7eab4d3b1852b5cfaa51f633f11f57792d58d7149`  
		Last Modified: Wed, 05 Sep 2018 23:09:22 GMT  
		Size: 133.3 MB (133254088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9734ac69353f563d2a0b384a1e924f98dba69dd1cbc3705b0cd9f4c594d1358`  
		Last Modified: Wed, 05 Sep 2018 23:08:56 GMT  
		Size: 201.5 KB (201503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2c5e37ab42eb8cff7b0a87f9cb59efcc341efa17adff8055bb956b7b2575`  
		Last Modified: Wed, 05 Sep 2018 23:08:55 GMT  
		Size: 3.6 MB (3602689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3` - linux; 386

```console
$ docker pull erlang@sha256:afd60d5e03debbbd4e3dfa5b2bf37ddc154a224d405fae7ea063aeba8fe92d9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468914115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1673533803ab07f73ffee9367563d74d95b771d3e53846aa08e3c4c96950d454`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:34:42 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:11:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:11:53 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 14:11:53 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 14:12:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 14:12:07 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 14:12:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ead89644a347a10211a46649eeee245c707e1ff6d8b05bd33c02966e7c20ef`  
		Last Modified: Wed, 05 Sep 2018 17:01:03 GMT  
		Size: 133.9 MB (133914360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f603d12259844ba51b92a9f769e735890a0cb8938f46e1b8390e652bf69f4050`  
		Last Modified: Wed, 05 Sep 2018 17:00:10 GMT  
		Size: 201.5 KB (201518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e8d8c15cec6c7cb5e2c35f5e4aa5b4ae848d0df698a9eabbe15a01cb60f164`  
		Last Modified: Wed, 05 Sep 2018 17:00:12 GMT  
		Size: 3.6 MB (3601432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3` - linux; ppc64le

```console
$ docker pull erlang@sha256:28c641839dc91c3cf4eb96d2910e01f19fabb451f0102f2a0e54c8dd69b1b235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457174142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82389a1b674d84ff7734cf330f7ae79c78f2669257a13b181ed4e14607e0192a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:13:02 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:22:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:22:40 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 09:22:41 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 09:22:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 09:22:48 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 09:23:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc77eb55401d438cda940fb0e23e65571522e2c76165468a184d56f13270149`  
		Last Modified: Wed, 05 Sep 2018 09:34:17 GMT  
		Size: 134.6 MB (134620955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1fe1315b2b157085e91c1614fb437b9407c0f16b0619ed46d903529dba4c`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 201.5 KB (201521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eef1c88c2f278e07fc8abdcd561cd2b7f6e88c5f761f6b557fb6746728d48c1`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 3.6 MB (3601441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3` - linux; s390x

```console
$ docker pull erlang@sha256:9f66ae1752a059f0deb0b057e9617c376207e5836bc2130d0735c20cd267e03d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457379442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e7fe9c619b9584d5deaff757a37bd633463bb553e55f3c713a061feff3e93`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:50:25 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:57:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:50 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:52 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:56 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:58:15 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04ea93039ba4a8690e70aada484ca955e328dbc469e2325469f70e92ba6d54`  
		Last Modified: Wed, 05 Sep 2018 13:07:33 GMT  
		Size: 138.0 MB (138038867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fb9701662602a12b3b0dab4a431d9c1dd97316cabb3edd0a32dad5ca116697`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 201.5 KB (201524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b73aca5b73864574ce7c3c194ed135c9e7e0e221941df98f47c56e1ccbd707`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 3.6 MB (3601180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8`

```console
$ docker pull erlang@sha256:29c57a0755be10a82123a6264f47fd3465f84e5baa8a36c5ed27bb919ad1813f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8` - linux; amd64

```console
$ docker pull erlang@sha256:1f4bfb1d01fbb43baf4a436272d65d451230c2ec0e128a3a1faf630ac1be9217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464557433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e96be278e20c8d48a815edb2c924c8f830e27c2a6ac7f4372d2270ecf83420c`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:29:46 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:41:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:41:40 GMT
CMD ["erl"]
# Tue, 04 Sep 2018 23:41:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 04 Sep 2018 23:41:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 04 Sep 2018 23:41:44 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 04 Sep 2018 23:42:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5213beed4a26e61870f622db37ad43e6220d592cdf5a9fd428a9e2c6fee50e`  
		Last Modified: Wed, 05 Sep 2018 00:53:44 GMT  
		Size: 137.1 MB (137094054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e24ec9562895f4de1cf2291884494742e9eceb4ed2b10e766ad3acea285fd3`  
		Last Modified: Wed, 05 Sep 2018 00:53:26 GMT  
		Size: 201.5 KB (201494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc7234aeea00a8a39448e3acc644a08e6cba8ae09e64fa643447c8462e6d919`  
		Last Modified: Wed, 05 Sep 2018 00:53:28 GMT  
		Size: 3.6 MB (3601062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8` - linux; arm variant v7

```console
$ docker pull erlang@sha256:7a20dafab289a73893355e929ee802b95845990842cee412daf84babe5c0fd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.5 MB (429472743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb8a2d1f8cfd0f8cbbf3e3e2a15b6fd71dfb45c2ff8510b56d4b09e6d933fa0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:27:17 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 17:36:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:36:46 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 17:36:47 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 17:36:51 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 17:36:52 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 17:37:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d2c9662db97e9ff3215d0ccc0331924b0d557ba30310d55da49c4e081d5fd4`  
		Last Modified: Wed, 05 Sep 2018 17:39:46 GMT  
		Size: 129.9 MB (129870494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cfbc70ad58e975afc627caf93abb3d5ecdc04e742bbc66d0f4891bc47bd14`  
		Last Modified: Wed, 05 Sep 2018 17:39:22 GMT  
		Size: 201.5 KB (201534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fdfefa79aeb08c32bf88b763db28858bed88d924ab27b7e17d28ec6725ee9`  
		Last Modified: Wed, 05 Sep 2018 17:39:23 GMT  
		Size: 3.6 MB (3602417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:bfd18b867f0f6ff759521ee94475b5451ffffbf08eb860cfecf9ee3138340793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.6 MB (442589721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ff4bc9c5ec809ff29e2ca976f9eeb217dd868000d9598fb772188b3cedc1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:45:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 23:01:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:01:09 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 23:01:10 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 23:01:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 23:01:18 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 23:02:17 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4391fc979514578313c92d7eab4d3b1852b5cfaa51f633f11f57792d58d7149`  
		Last Modified: Wed, 05 Sep 2018 23:09:22 GMT  
		Size: 133.3 MB (133254088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9734ac69353f563d2a0b384a1e924f98dba69dd1cbc3705b0cd9f4c594d1358`  
		Last Modified: Wed, 05 Sep 2018 23:08:56 GMT  
		Size: 201.5 KB (201503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2c5e37ab42eb8cff7b0a87f9cb59efcc341efa17adff8055bb956b7b2575`  
		Last Modified: Wed, 05 Sep 2018 23:08:55 GMT  
		Size: 3.6 MB (3602689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8` - linux; 386

```console
$ docker pull erlang@sha256:afd60d5e03debbbd4e3dfa5b2bf37ddc154a224d405fae7ea063aeba8fe92d9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468914115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1673533803ab07f73ffee9367563d74d95b771d3e53846aa08e3c4c96950d454`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:34:42 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:11:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:11:53 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 14:11:53 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 14:12:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 14:12:07 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 14:12:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ead89644a347a10211a46649eeee245c707e1ff6d8b05bd33c02966e7c20ef`  
		Last Modified: Wed, 05 Sep 2018 17:01:03 GMT  
		Size: 133.9 MB (133914360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f603d12259844ba51b92a9f769e735890a0cb8938f46e1b8390e652bf69f4050`  
		Last Modified: Wed, 05 Sep 2018 17:00:10 GMT  
		Size: 201.5 KB (201518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e8d8c15cec6c7cb5e2c35f5e4aa5b4ae848d0df698a9eabbe15a01cb60f164`  
		Last Modified: Wed, 05 Sep 2018 17:00:12 GMT  
		Size: 3.6 MB (3601432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8` - linux; ppc64le

```console
$ docker pull erlang@sha256:28c641839dc91c3cf4eb96d2910e01f19fabb451f0102f2a0e54c8dd69b1b235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457174142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82389a1b674d84ff7734cf330f7ae79c78f2669257a13b181ed4e14607e0192a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:13:02 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:22:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:22:40 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 09:22:41 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 09:22:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 09:22:48 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 09:23:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc77eb55401d438cda940fb0e23e65571522e2c76165468a184d56f13270149`  
		Last Modified: Wed, 05 Sep 2018 09:34:17 GMT  
		Size: 134.6 MB (134620955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1fe1315b2b157085e91c1614fb437b9407c0f16b0619ed46d903529dba4c`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 201.5 KB (201521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eef1c88c2f278e07fc8abdcd561cd2b7f6e88c5f761f6b557fb6746728d48c1`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 3.6 MB (3601441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8` - linux; s390x

```console
$ docker pull erlang@sha256:9f66ae1752a059f0deb0b057e9617c376207e5836bc2130d0735c20cd267e03d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457379442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e7fe9c619b9584d5deaff757a37bd633463bb553e55f3c713a061feff3e93`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:50:25 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:57:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:50 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:52 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:56 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:58:15 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04ea93039ba4a8690e70aada484ca955e328dbc469e2325469f70e92ba6d54`  
		Last Modified: Wed, 05 Sep 2018 13:07:33 GMT  
		Size: 138.0 MB (138038867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fb9701662602a12b3b0dab4a431d9c1dd97316cabb3edd0a32dad5ca116697`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 201.5 KB (201524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b73aca5b73864574ce7c3c194ed135c9e7e0e221941df98f47c56e1ccbd707`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 3.6 MB (3601180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8.8`

```console
$ docker pull erlang@sha256:29c57a0755be10a82123a6264f47fd3465f84e5baa8a36c5ed27bb919ad1813f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8.8` - linux; amd64

```console
$ docker pull erlang@sha256:1f4bfb1d01fbb43baf4a436272d65d451230c2ec0e128a3a1faf630ac1be9217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464557433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e96be278e20c8d48a815edb2c924c8f830e27c2a6ac7f4372d2270ecf83420c`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:29:46 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:41:40 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:41:40 GMT
CMD ["erl"]
# Tue, 04 Sep 2018 23:41:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 04 Sep 2018 23:41:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 04 Sep 2018 23:41:44 GMT
ENV REBAR3_VERSION=3.6.1
# Tue, 04 Sep 2018 23:42:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5213beed4a26e61870f622db37ad43e6220d592cdf5a9fd428a9e2c6fee50e`  
		Last Modified: Wed, 05 Sep 2018 00:53:44 GMT  
		Size: 137.1 MB (137094054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e24ec9562895f4de1cf2291884494742e9eceb4ed2b10e766ad3acea285fd3`  
		Last Modified: Wed, 05 Sep 2018 00:53:26 GMT  
		Size: 201.5 KB (201494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc7234aeea00a8a39448e3acc644a08e6cba8ae09e64fa643447c8462e6d919`  
		Last Modified: Wed, 05 Sep 2018 00:53:28 GMT  
		Size: 3.6 MB (3601062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8` - linux; arm variant v7

```console
$ docker pull erlang@sha256:7a20dafab289a73893355e929ee802b95845990842cee412daf84babe5c0fd34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.5 MB (429472743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb8a2d1f8cfd0f8cbbf3e3e2a15b6fd71dfb45c2ff8510b56d4b09e6d933fa0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:27:17 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 17:36:45 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:36:46 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 17:36:47 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 17:36:51 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 17:36:52 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 17:37:27 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d2c9662db97e9ff3215d0ccc0331924b0d557ba30310d55da49c4e081d5fd4`  
		Last Modified: Wed, 05 Sep 2018 17:39:46 GMT  
		Size: 129.9 MB (129870494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cfbc70ad58e975afc627caf93abb3d5ecdc04e742bbc66d0f4891bc47bd14`  
		Last Modified: Wed, 05 Sep 2018 17:39:22 GMT  
		Size: 201.5 KB (201534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09fdfefa79aeb08c32bf88b763db28858bed88d924ab27b7e17d28ec6725ee9`  
		Last Modified: Wed, 05 Sep 2018 17:39:23 GMT  
		Size: 3.6 MB (3602417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:bfd18b867f0f6ff759521ee94475b5451ffffbf08eb860cfecf9ee3138340793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.6 MB (442589721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da8ff4bc9c5ec809ff29e2ca976f9eeb217dd868000d9598fb772188b3cedc1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:15:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:45:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 23:01:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:01:09 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 23:01:10 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 23:01:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 23:01:18 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 23:02:17 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7759d8623c1cc32b06c21fc173f450a7cf57a80e14e31dd28b6e4dadcef76bea`  
		Last Modified: Wed, 05 Sep 2018 10:30:03 GMT  
		Size: 200.6 MB (200626040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4391fc979514578313c92d7eab4d3b1852b5cfaa51f633f11f57792d58d7149`  
		Last Modified: Wed, 05 Sep 2018 23:09:22 GMT  
		Size: 133.3 MB (133254088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9734ac69353f563d2a0b384a1e924f98dba69dd1cbc3705b0cd9f4c594d1358`  
		Last Modified: Wed, 05 Sep 2018 23:08:56 GMT  
		Size: 201.5 KB (201503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164f2c5e37ab42eb8cff7b0a87f9cb59efcc341efa17adff8055bb956b7b2575`  
		Last Modified: Wed, 05 Sep 2018 23:08:55 GMT  
		Size: 3.6 MB (3602689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8` - linux; 386

```console
$ docker pull erlang@sha256:afd60d5e03debbbd4e3dfa5b2bf37ddc154a224d405fae7ea063aeba8fe92d9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468914115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1673533803ab07f73ffee9367563d74d95b771d3e53846aa08e3c4c96950d454`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:34:42 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:11:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:11:53 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 14:11:53 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 14:12:06 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 14:12:07 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 14:12:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ead89644a347a10211a46649eeee245c707e1ff6d8b05bd33c02966e7c20ef`  
		Last Modified: Wed, 05 Sep 2018 17:01:03 GMT  
		Size: 133.9 MB (133914360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f603d12259844ba51b92a9f769e735890a0cb8938f46e1b8390e652bf69f4050`  
		Last Modified: Wed, 05 Sep 2018 17:00:10 GMT  
		Size: 201.5 KB (201518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e8d8c15cec6c7cb5e2c35f5e4aa5b4ae848d0df698a9eabbe15a01cb60f164`  
		Last Modified: Wed, 05 Sep 2018 17:00:12 GMT  
		Size: 3.6 MB (3601432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8` - linux; ppc64le

```console
$ docker pull erlang@sha256:28c641839dc91c3cf4eb96d2910e01f19fabb451f0102f2a0e54c8dd69b1b235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457174142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82389a1b674d84ff7734cf330f7ae79c78f2669257a13b181ed4e14607e0192a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:13:02 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:22:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:22:40 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 09:22:41 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 09:22:47 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 09:22:48 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 09:23:26 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc77eb55401d438cda940fb0e23e65571522e2c76165468a184d56f13270149`  
		Last Modified: Wed, 05 Sep 2018 09:34:17 GMT  
		Size: 134.6 MB (134620955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fc1fe1315b2b157085e91c1614fb437b9407c0f16b0619ed46d903529dba4c`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 201.5 KB (201521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eef1c88c2f278e07fc8abdcd561cd2b7f6e88c5f761f6b557fb6746728d48c1`  
		Last Modified: Wed, 05 Sep 2018 09:33:57 GMT  
		Size: 3.6 MB (3601441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8` - linux; s390x

```console
$ docker pull erlang@sha256:9f66ae1752a059f0deb0b057e9617c376207e5836bc2130d0735c20cd267e03d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457379442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e7fe9c619b9584d5deaff757a37bd633463bb553e55f3c713a061feff3e93`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:50:25 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:57:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:57:50 GMT
CMD ["erl"]
# Wed, 05 Sep 2018 12:57:50 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 05 Sep 2018 12:57:52 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 05 Sep 2018 12:57:56 GMT
ENV REBAR3_VERSION=3.6.1
# Wed, 05 Sep 2018 12:58:15 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04ea93039ba4a8690e70aada484ca955e328dbc469e2325469f70e92ba6d54`  
		Last Modified: Wed, 05 Sep 2018 13:07:33 GMT  
		Size: 138.0 MB (138038867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fb9701662602a12b3b0dab4a431d9c1dd97316cabb3edd0a32dad5ca116697`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 201.5 KB (201524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b73aca5b73864574ce7c3c194ed135c9e7e0e221941df98f47c56e1ccbd707`  
		Last Modified: Wed, 05 Sep 2018 13:07:19 GMT  
		Size: 3.6 MB (3601180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8.8-alpine`

```console
$ docker pull erlang@sha256:b05468aaec708de290fc5d63ceaca1a185e6fe6a65aed1a9fbcb89bd41668aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8.8-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:90f5abc962e3158774cb01223485dfb68f426c7801026fb7c919fae161672647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47729688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc55f8126ab16eff3cd036f37827ba7614a00aa7efae459107ec52dd5ac18d1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:11:09 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 11 Sep 2018 23:20:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:20:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411cf099bd9b2f35f8f221b325d17f8bb09f65829037bfbadbaf44a3d65dbd5`  
		Last Modified: Tue, 11 Sep 2018 23:22:07 GMT  
		Size: 45.5 MB (45522757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b74944e9335265677a28f8cbe2c07c9d39aaf9be9bef9c338a1a6345161a5928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44309657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ad6f850b957c5e96d3e71039a8638fd84a2a939f8f4d044284c61e12bcb6c3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 09:13:03 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 09:22:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 09:22:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6122dbf5a42220e69ddeaf1dff55498db21365551b3a864be23367f2bf618d3`  
		Last Modified: Wed, 29 Aug 2018 09:30:38 GMT  
		Size: 42.2 MB (42209967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-alpine` - linux; 386

```console
$ docker pull erlang@sha256:83a347b0f28f9bbfe228c3b869b28f3cf8c9874613e872a08582b3e9ddece899
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47623238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418161032eb14e969a2e2f6d98505922452f3b79d2f231a5732760814bb9df62`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 31 Aug 2018 20:04:59 GMT
ENV OTP_VERSION=20.3.8.8
# Fri, 31 Aug 2018 20:18:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 31 Aug 2018 20:18:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc5d1bc0c5600b1c5308a5f44e0000bc138687ef4c0679e287514d27da85d5d`  
		Last Modified: Fri, 31 Aug 2018 22:16:50 GMT  
		Size: 45.4 MB (45352143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:7feb5ed50ecca1c171c3039db6d01013540268e4636bedf4472cab4de48a957e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44772297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df81b98ff8d5758ad5e179046d2d19d47a0728e15673d278739ad1c70034a`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 08:37:39 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 08:43:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 08:43:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535e930c26f914c6f356c24c1d18b851ba1ceb09329a370ce17e958a599b7e4`  
		Last Modified: Wed, 29 Aug 2018 08:47:22 GMT  
		Size: 42.6 MB (42577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:fb11b3688119f20f27a8b5900061e568f6113f89b0055a066939340d04227851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44880420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84755666cef438f4f81c3064ea878e114cbf35ec3f1ea88f2a72273e4fe5960d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 12:01:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 12:09:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 12:09:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633bcf570f4bb450fca097fb824bb1ffaa14c3d472cdf3a8f29611a9064b209`  
		Last Modified: Wed, 29 Aug 2018 12:13:38 GMT  
		Size: 42.6 MB (42572774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8.8-slim`

```console
$ docker pull erlang@sha256:7a021a05623883029c441c41c7bd0ea82b1b1f7491e2c3e6a194caa615d42cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8.8-slim` - linux; amd64

```console
$ docker pull erlang@sha256:a2788841dbc709c6169632e7b1700bb760a097be2205c66f95ca16accfe0e5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110378258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0d003fd002a04e03c9d37a7b824428efb459b14adeb914172392a0904873b8`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:42:26 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:51:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:51:52 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d7f160f470dd6d0c747c387245499682d6a108376df20c69c321c59fb5028`  
		Last Modified: Wed, 05 Sep 2018 00:54:06 GMT  
		Size: 65.1 MB (65068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:638467ffad40a177f962d82ad1a489747ad49c1370b33536ab319f50ca5ed029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102112438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e3840a56775aacbb8a0fe5b71ff7c6af5fe6a26d8a0d15a490ba65bfdf5a95`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:40:53 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:46:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7a0acf2233415945d6a86f726b339d0025737d3416542dacb96123576f0a7`  
		Last Modified: Wed, 05 Sep 2018 13:34:52 GMT  
		Size: 60.0 MB (60049768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:dc5912a771f1d265324d0213072a52da60482d3c5ce8dbe6f86999b25a31ca7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104360218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9699a895f8fcfdaf20f3b8116e18d1d768fc2982f76ba38a5f2a6cedb07439`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:47:36 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 10:00:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:00:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9abdfa7c4fa16719eefd2b6c405616e023325801e7cbf81880e8bf37489e4`  
		Last Modified: Wed, 05 Sep 2018 10:07:49 GMT  
		Size: 61.2 MB (61236597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-slim` - linux; 386

```console
$ docker pull erlang@sha256:34d37f79bf7645e2c21e6bc62bd01b61679be61e63da1e3afefeedeeb76e51b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114168227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8850216a42a30f70def1e735c9285bcc5fe8859bdc5dc904a9abee26ba6d359a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:13:06 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:46:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d280389c7bd5999778bc62e1a241bc8accaeac2cbcfe9cb76c1e28e568d1b3ee`  
		Last Modified: Wed, 05 Sep 2018 17:01:53 GMT  
		Size: 68.1 MB (68129181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:bdf90f4e6dead140202fe0498e0c88d467e3c329e01a53880c311d8e956ddc2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107719173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a280b44366bd2b5e3e74f523614651dcfbeedfa88d2562cfd9016a6b0851737`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:23:34 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:31:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:31:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51198f3fa059977973f3ee60e3f74a683670a2b0a3a7a91e70e3640221f572f`  
		Last Modified: Wed, 05 Sep 2018 09:35:11 GMT  
		Size: 62.1 MB (62123777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8.8-slim` - linux; s390x

```console
$ docker pull erlang@sha256:92e9eafa0f36c001a7e574bd44878138829a12419bc1b78c6c27670d75d28ca0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108897713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59bc346e1de32692ecc5b38615711b14fface28f262cb00cc219ae101ffb475`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:23 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 13:04:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:04:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab327abb6df893ab4adfb852890b885c6c231aa2e8b37d7663c9be85cd23508e`  
		Last Modified: Wed, 05 Sep 2018 13:08:09 GMT  
		Size: 63.7 MB (63698085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8-alpine`

```console
$ docker pull erlang@sha256:b05468aaec708de290fc5d63ceaca1a185e6fe6a65aed1a9fbcb89bd41668aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:90f5abc962e3158774cb01223485dfb68f426c7801026fb7c919fae161672647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47729688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc55f8126ab16eff3cd036f37827ba7614a00aa7efae459107ec52dd5ac18d1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:11:09 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 11 Sep 2018 23:20:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:20:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411cf099bd9b2f35f8f221b325d17f8bb09f65829037bfbadbaf44a3d65dbd5`  
		Last Modified: Tue, 11 Sep 2018 23:22:07 GMT  
		Size: 45.5 MB (45522757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b74944e9335265677a28f8cbe2c07c9d39aaf9be9bef9c338a1a6345161a5928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44309657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ad6f850b957c5e96d3e71039a8638fd84a2a939f8f4d044284c61e12bcb6c3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 09:13:03 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 09:22:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 09:22:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6122dbf5a42220e69ddeaf1dff55498db21365551b3a864be23367f2bf618d3`  
		Last Modified: Wed, 29 Aug 2018 09:30:38 GMT  
		Size: 42.2 MB (42209967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-alpine` - linux; 386

```console
$ docker pull erlang@sha256:83a347b0f28f9bbfe228c3b869b28f3cf8c9874613e872a08582b3e9ddece899
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47623238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418161032eb14e969a2e2f6d98505922452f3b79d2f231a5732760814bb9df62`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 31 Aug 2018 20:04:59 GMT
ENV OTP_VERSION=20.3.8.8
# Fri, 31 Aug 2018 20:18:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 31 Aug 2018 20:18:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc5d1bc0c5600b1c5308a5f44e0000bc138687ef4c0679e287514d27da85d5d`  
		Last Modified: Fri, 31 Aug 2018 22:16:50 GMT  
		Size: 45.4 MB (45352143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:7feb5ed50ecca1c171c3039db6d01013540268e4636bedf4472cab4de48a957e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44772297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df81b98ff8d5758ad5e179046d2d19d47a0728e15673d278739ad1c70034a`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 08:37:39 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 08:43:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 08:43:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535e930c26f914c6f356c24c1d18b851ba1ceb09329a370ce17e958a599b7e4`  
		Last Modified: Wed, 29 Aug 2018 08:47:22 GMT  
		Size: 42.6 MB (42577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:fb11b3688119f20f27a8b5900061e568f6113f89b0055a066939340d04227851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44880420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84755666cef438f4f81c3064ea878e114cbf35ec3f1ea88f2a72273e4fe5960d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 12:01:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 12:09:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 12:09:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633bcf570f4bb450fca097fb824bb1ffaa14c3d472cdf3a8f29611a9064b209`  
		Last Modified: Wed, 29 Aug 2018 12:13:38 GMT  
		Size: 42.6 MB (42572774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3.8-slim`

```console
$ docker pull erlang@sha256:7a021a05623883029c441c41c7bd0ea82b1b1f7491e2c3e6a194caa615d42cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3.8-slim` - linux; amd64

```console
$ docker pull erlang@sha256:a2788841dbc709c6169632e7b1700bb760a097be2205c66f95ca16accfe0e5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110378258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0d003fd002a04e03c9d37a7b824428efb459b14adeb914172392a0904873b8`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:42:26 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:51:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:51:52 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d7f160f470dd6d0c747c387245499682d6a108376df20c69c321c59fb5028`  
		Last Modified: Wed, 05 Sep 2018 00:54:06 GMT  
		Size: 65.1 MB (65068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:638467ffad40a177f962d82ad1a489747ad49c1370b33536ab319f50ca5ed029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102112438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e3840a56775aacbb8a0fe5b71ff7c6af5fe6a26d8a0d15a490ba65bfdf5a95`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:40:53 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:46:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7a0acf2233415945d6a86f726b339d0025737d3416542dacb96123576f0a7`  
		Last Modified: Wed, 05 Sep 2018 13:34:52 GMT  
		Size: 60.0 MB (60049768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:dc5912a771f1d265324d0213072a52da60482d3c5ce8dbe6f86999b25a31ca7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104360218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9699a895f8fcfdaf20f3b8116e18d1d768fc2982f76ba38a5f2a6cedb07439`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:47:36 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 10:00:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:00:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9abdfa7c4fa16719eefd2b6c405616e023325801e7cbf81880e8bf37489e4`  
		Last Modified: Wed, 05 Sep 2018 10:07:49 GMT  
		Size: 61.2 MB (61236597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-slim` - linux; 386

```console
$ docker pull erlang@sha256:34d37f79bf7645e2c21e6bc62bd01b61679be61e63da1e3afefeedeeb76e51b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114168227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8850216a42a30f70def1e735c9285bcc5fe8859bdc5dc904a9abee26ba6d359a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:13:06 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:46:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d280389c7bd5999778bc62e1a241bc8accaeac2cbcfe9cb76c1e28e568d1b3ee`  
		Last Modified: Wed, 05 Sep 2018 17:01:53 GMT  
		Size: 68.1 MB (68129181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:bdf90f4e6dead140202fe0498e0c88d467e3c329e01a53880c311d8e956ddc2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107719173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a280b44366bd2b5e3e74f523614651dcfbeedfa88d2562cfd9016a6b0851737`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:23:34 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:31:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:31:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51198f3fa059977973f3ee60e3f74a683670a2b0a3a7a91e70e3640221f572f`  
		Last Modified: Wed, 05 Sep 2018 09:35:11 GMT  
		Size: 62.1 MB (62123777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3.8-slim` - linux; s390x

```console
$ docker pull erlang@sha256:92e9eafa0f36c001a7e574bd44878138829a12419bc1b78c6c27670d75d28ca0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108897713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59bc346e1de32692ecc5b38615711b14fface28f262cb00cc219ae101ffb475`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:23 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 13:04:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:04:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab327abb6df893ab4adfb852890b885c6c231aa2e8b37d7663c9be85cd23508e`  
		Last Modified: Wed, 05 Sep 2018 13:08:09 GMT  
		Size: 63.7 MB (63698085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3-alpine`

```console
$ docker pull erlang@sha256:b05468aaec708de290fc5d63ceaca1a185e6fe6a65aed1a9fbcb89bd41668aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:90f5abc962e3158774cb01223485dfb68f426c7801026fb7c919fae161672647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47729688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc55f8126ab16eff3cd036f37827ba7614a00aa7efae459107ec52dd5ac18d1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:11:09 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 11 Sep 2018 23:20:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:20:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411cf099bd9b2f35f8f221b325d17f8bb09f65829037bfbadbaf44a3d65dbd5`  
		Last Modified: Tue, 11 Sep 2018 23:22:07 GMT  
		Size: 45.5 MB (45522757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b74944e9335265677a28f8cbe2c07c9d39aaf9be9bef9c338a1a6345161a5928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44309657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ad6f850b957c5e96d3e71039a8638fd84a2a939f8f4d044284c61e12bcb6c3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 09:13:03 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 09:22:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 09:22:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6122dbf5a42220e69ddeaf1dff55498db21365551b3a864be23367f2bf618d3`  
		Last Modified: Wed, 29 Aug 2018 09:30:38 GMT  
		Size: 42.2 MB (42209967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-alpine` - linux; 386

```console
$ docker pull erlang@sha256:83a347b0f28f9bbfe228c3b869b28f3cf8c9874613e872a08582b3e9ddece899
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47623238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418161032eb14e969a2e2f6d98505922452f3b79d2f231a5732760814bb9df62`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 31 Aug 2018 20:04:59 GMT
ENV OTP_VERSION=20.3.8.8
# Fri, 31 Aug 2018 20:18:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 31 Aug 2018 20:18:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc5d1bc0c5600b1c5308a5f44e0000bc138687ef4c0679e287514d27da85d5d`  
		Last Modified: Fri, 31 Aug 2018 22:16:50 GMT  
		Size: 45.4 MB (45352143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:7feb5ed50ecca1c171c3039db6d01013540268e4636bedf4472cab4de48a957e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44772297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df81b98ff8d5758ad5e179046d2d19d47a0728e15673d278739ad1c70034a`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 08:37:39 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 08:43:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 08:43:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535e930c26f914c6f356c24c1d18b851ba1ceb09329a370ce17e958a599b7e4`  
		Last Modified: Wed, 29 Aug 2018 08:47:22 GMT  
		Size: 42.6 MB (42577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:fb11b3688119f20f27a8b5900061e568f6113f89b0055a066939340d04227851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44880420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84755666cef438f4f81c3064ea878e114cbf35ec3f1ea88f2a72273e4fe5960d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 12:01:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 12:09:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 12:09:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633bcf570f4bb450fca097fb824bb1ffaa14c3d472cdf3a8f29611a9064b209`  
		Last Modified: Wed, 29 Aug 2018 12:13:38 GMT  
		Size: 42.6 MB (42572774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.3-slim`

```console
$ docker pull erlang@sha256:7a021a05623883029c441c41c7bd0ea82b1b1f7491e2c3e6a194caa615d42cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20.3-slim` - linux; amd64

```console
$ docker pull erlang@sha256:a2788841dbc709c6169632e7b1700bb760a097be2205c66f95ca16accfe0e5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110378258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0d003fd002a04e03c9d37a7b824428efb459b14adeb914172392a0904873b8`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:42:26 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:51:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:51:52 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d7f160f470dd6d0c747c387245499682d6a108376df20c69c321c59fb5028`  
		Last Modified: Wed, 05 Sep 2018 00:54:06 GMT  
		Size: 65.1 MB (65068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:638467ffad40a177f962d82ad1a489747ad49c1370b33536ab319f50ca5ed029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102112438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e3840a56775aacbb8a0fe5b71ff7c6af5fe6a26d8a0d15a490ba65bfdf5a95`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:40:53 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:46:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7a0acf2233415945d6a86f726b339d0025737d3416542dacb96123576f0a7`  
		Last Modified: Wed, 05 Sep 2018 13:34:52 GMT  
		Size: 60.0 MB (60049768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:dc5912a771f1d265324d0213072a52da60482d3c5ce8dbe6f86999b25a31ca7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104360218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9699a895f8fcfdaf20f3b8116e18d1d768fc2982f76ba38a5f2a6cedb07439`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:47:36 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 10:00:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:00:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9abdfa7c4fa16719eefd2b6c405616e023325801e7cbf81880e8bf37489e4`  
		Last Modified: Wed, 05 Sep 2018 10:07:49 GMT  
		Size: 61.2 MB (61236597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-slim` - linux; 386

```console
$ docker pull erlang@sha256:34d37f79bf7645e2c21e6bc62bd01b61679be61e63da1e3afefeedeeb76e51b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114168227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8850216a42a30f70def1e735c9285bcc5fe8859bdc5dc904a9abee26ba6d359a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:13:06 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:46:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d280389c7bd5999778bc62e1a241bc8accaeac2cbcfe9cb76c1e28e568d1b3ee`  
		Last Modified: Wed, 05 Sep 2018 17:01:53 GMT  
		Size: 68.1 MB (68129181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:bdf90f4e6dead140202fe0498e0c88d467e3c329e01a53880c311d8e956ddc2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107719173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a280b44366bd2b5e3e74f523614651dcfbeedfa88d2562cfd9016a6b0851737`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:23:34 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:31:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:31:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51198f3fa059977973f3ee60e3f74a683670a2b0a3a7a91e70e3640221f572f`  
		Last Modified: Wed, 05 Sep 2018 09:35:11 GMT  
		Size: 62.1 MB (62123777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.3-slim` - linux; s390x

```console
$ docker pull erlang@sha256:92e9eafa0f36c001a7e574bd44878138829a12419bc1b78c6c27670d75d28ca0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108897713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59bc346e1de32692ecc5b38615711b14fface28f262cb00cc219ae101ffb475`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:23 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 13:04:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:04:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab327abb6df893ab4adfb852890b885c6c231aa2e8b37d7663c9be85cd23508e`  
		Last Modified: Wed, 05 Sep 2018 13:08:09 GMT  
		Size: 63.7 MB (63698085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20-alpine`

```console
$ docker pull erlang@sha256:b05468aaec708de290fc5d63ceaca1a185e6fe6a65aed1a9fbcb89bd41668aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:90f5abc962e3158774cb01223485dfb68f426c7801026fb7c919fae161672647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47729688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc55f8126ab16eff3cd036f37827ba7614a00aa7efae459107ec52dd5ac18d1`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:11:09 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 11 Sep 2018 23:20:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:20:59 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411cf099bd9b2f35f8f221b325d17f8bb09f65829037bfbadbaf44a3d65dbd5`  
		Last Modified: Tue, 11 Sep 2018 23:22:07 GMT  
		Size: 45.5 MB (45522757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:b74944e9335265677a28f8cbe2c07c9d39aaf9be9bef9c338a1a6345161a5928
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44309657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ad6f850b957c5e96d3e71039a8638fd84a2a939f8f4d044284c61e12bcb6c3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 09:13:03 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 09:22:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 09:22:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6122dbf5a42220e69ddeaf1dff55498db21365551b3a864be23367f2bf618d3`  
		Last Modified: Wed, 29 Aug 2018 09:30:38 GMT  
		Size: 42.2 MB (42209967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-alpine` - linux; 386

```console
$ docker pull erlang@sha256:83a347b0f28f9bbfe228c3b869b28f3cf8c9874613e872a08582b3e9ddece899
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47623238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418161032eb14e969a2e2f6d98505922452f3b79d2f231a5732760814bb9df62`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 31 Aug 2018 20:04:59 GMT
ENV OTP_VERSION=20.3.8.8
# Fri, 31 Aug 2018 20:18:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Fri, 31 Aug 2018 20:18:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc5d1bc0c5600b1c5308a5f44e0000bc138687ef4c0679e287514d27da85d5d`  
		Last Modified: Fri, 31 Aug 2018 22:16:50 GMT  
		Size: 45.4 MB (45352143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:7feb5ed50ecca1c171c3039db6d01013540268e4636bedf4472cab4de48a957e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44772297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df81b98ff8d5758ad5e179046d2d19d47a0728e15673d278739ad1c70034a`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 08:37:39 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 08:43:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 08:43:49 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535e930c26f914c6f356c24c1d18b851ba1ceb09329a370ce17e958a599b7e4`  
		Last Modified: Wed, 29 Aug 2018 08:47:22 GMT  
		Size: 42.6 MB (42577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:fb11b3688119f20f27a8b5900061e568f6113f89b0055a066939340d04227851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44880420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84755666cef438f4f81c3064ea878e114cbf35ec3f1ea88f2a72273e4fe5960d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 29 Aug 2018 12:01:13 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 29 Aug 2018 12:09:14 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 29 Aug 2018 12:09:14 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633bcf570f4bb450fca097fb824bb1ffaa14c3d472cdf3a8f29611a9064b209`  
		Last Modified: Wed, 29 Aug 2018 12:13:38 GMT  
		Size: 42.6 MB (42572774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20-slim`

```console
$ docker pull erlang@sha256:7a021a05623883029c441c41c7bd0ea82b1b1f7491e2c3e6a194caa615d42cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:20-slim` - linux; amd64

```console
$ docker pull erlang@sha256:a2788841dbc709c6169632e7b1700bb760a097be2205c66f95ca16accfe0e5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110378258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0d003fd002a04e03c9d37a7b824428efb459b14adeb914172392a0904873b8`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:42:26 GMT
ENV OTP_VERSION=20.3.8.8
# Tue, 04 Sep 2018 23:51:52 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:51:52 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510d7f160f470dd6d0c747c387245499682d6a108376df20c69c321c59fb5028`  
		Last Modified: Wed, 05 Sep 2018 00:54:06 GMT  
		Size: 65.1 MB (65068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:638467ffad40a177f962d82ad1a489747ad49c1370b33536ab319f50ca5ed029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102112438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e3840a56775aacbb8a0fe5b71ff7c6af5fe6a26d8a0d15a490ba65bfdf5a95`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:40:53 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 12:46:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:15 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7a0acf2233415945d6a86f726b339d0025737d3416542dacb96123576f0a7`  
		Last Modified: Wed, 05 Sep 2018 13:34:52 GMT  
		Size: 60.0 MB (60049768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:dc5912a771f1d265324d0213072a52da60482d3c5ce8dbe6f86999b25a31ca7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104360218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9699a895f8fcfdaf20f3b8116e18d1d768fc2982f76ba38a5f2a6cedb07439`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:47:36 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 10:00:05 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:00:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9abdfa7c4fa16719eefd2b6c405616e023325801e7cbf81880e8bf37489e4`  
		Last Modified: Wed, 05 Sep 2018 10:07:49 GMT  
		Size: 61.2 MB (61236597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; 386

```console
$ docker pull erlang@sha256:34d37f79bf7645e2c21e6bc62bd01b61679be61e63da1e3afefeedeeb76e51b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114168227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8850216a42a30f70def1e735c9285bcc5fe8859bdc5dc904a9abee26ba6d359a`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:13:06 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 14:46:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:46:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d280389c7bd5999778bc62e1a241bc8accaeac2cbcfe9cb76c1e28e568d1b3ee`  
		Last Modified: Wed, 05 Sep 2018 17:01:53 GMT  
		Size: 68.1 MB (68129181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:bdf90f4e6dead140202fe0498e0c88d467e3c329e01a53880c311d8e956ddc2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107719173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a280b44366bd2b5e3e74f523614651dcfbeedfa88d2562cfd9016a6b0851737`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:23:34 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 09:31:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:31:26 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51198f3fa059977973f3ee60e3f74a683670a2b0a3a7a91e70e3640221f572f`  
		Last Modified: Wed, 05 Sep 2018 09:35:11 GMT  
		Size: 62.1 MB (62123777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; s390x

```console
$ docker pull erlang@sha256:92e9eafa0f36c001a7e574bd44878138829a12419bc1b78c6c27670d75d28ca0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108897713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59bc346e1de32692ecc5b38615711b14fface28f262cb00cc219ae101ffb475`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:23 GMT
ENV OTP_VERSION=20.3.8.8
# Wed, 05 Sep 2018 13:04:06 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e831abcf500eabe87e8f94c464db99334048793ad6d28df5ca05f711ef1858e6" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:04:07 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab327abb6df893ab4adfb852890b885c6c231aa2e8b37d7663c9be85cd23508e`  
		Last Modified: Wed, 05 Sep 2018 13:08:09 GMT  
		Size: 63.7 MB (63698085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21`

```console
$ docker pull erlang@sha256:193aceb26478b4686c941db061c704901c6f335ee18b59ec84274ececca12209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21` - linux; amd64

```console
$ docker pull erlang@sha256:cf85dc19a29d5e1f810b11b9d05005f37eee9790e35fa73795eafda6768fca2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 MB (460841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197f5469260c5186d05f61d029d5992832b42996e0c9bac30c8562a5cd5028fa`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:19:37 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 18:40:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:40:42 GMT
CMD ["erl"]
# Fri, 07 Sep 2018 18:40:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 07 Sep 2018 18:40:48 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 07 Sep 2018 18:40:48 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 07 Sep 2018 18:41:31 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3af62fd78e9522843b7f692510e87c11ce4eff94151e276edfafed7ac99041e`  
		Last Modified: Fri, 07 Sep 2018 19:11:07 GMT  
		Size: 133.4 MB (133374245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1609f616cec87f1713a1c1df2505c5b2829719123ecbca7235b9e6cdae00f762`  
		Last Modified: Fri, 07 Sep 2018 19:10:49 GMT  
		Size: 200.9 KB (200940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a11615db92ca50f00a691e5fa8b6071a5c07d7c4a299ec1a3a873deb8f6f9`  
		Last Modified: Fri, 07 Sep 2018 19:10:50 GMT  
		Size: 3.6 MB (3605707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21` - linux; arm variant v7

```console
$ docker pull erlang@sha256:28784aa5f71b181feae0e442ff54496988923b6befe85396a154de34614d0b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.7 MB (425704602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306716d0b26812f5bd09d13e6cb573b5f043e8f819b47bb6e0c5c4b1b6baa672`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:58:13 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:07:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:07:10 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 12:07:11 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 12:07:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 12:07:15 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 12:07:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fb97791bec29a84552544c1cae377c745afa50a07745a59170f1877a158541`  
		Last Modified: Sat, 08 Sep 2018 12:15:22 GMT  
		Size: 126.1 MB (126098062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d233b7ae341142ff5526d29eaace26b53b4781b42866d7e5b0eaaa1515348f`  
		Last Modified: Sat, 08 Sep 2018 12:14:59 GMT  
		Size: 200.9 KB (200922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e654aabcf0b40553af6730c8851aa290f6b47106b925966d68b651947734a94d`  
		Last Modified: Sat, 08 Sep 2018 12:15:01 GMT  
		Size: 3.6 MB (3607320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21` - linux; 386

```console
$ docker pull erlang@sha256:db76eef99f66a8ca42014d84474b2492c7f1c72de4765aff3a4bd55b987a2cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.2 MB (465156139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcd8e4f3c5ab83436b1a49fe3aa00455e1d07b17cffdd4b93043659a02888b1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:48:06 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 10:58:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:58:33 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 10:58:33 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 10:58:36 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 10:58:36 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 10:58:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1045fbd3b829757c455024aae6d3c2f5320279100ec0f0e07e677d0aa9e93ead`  
		Last Modified: Sat, 08 Sep 2018 11:19:21 GMT  
		Size: 130.2 MB (130151106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7d35be18563c2d0c97fc7a1ea637f7a8891fce32aaa39f5e2e3f811cca585b`  
		Last Modified: Sat, 08 Sep 2018 11:19:03 GMT  
		Size: 201.0 KB (200951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fd5c434808cb031e862b95deaa564c45d62987809e5e9331f6ca26bc766cf1`  
		Last Modified: Sat, 08 Sep 2018 11:19:04 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21` - linux; ppc64le

```console
$ docker pull erlang@sha256:cb763db2a54a4f3899b7fdf11c7f63520b912e5de57591773498570ae1cfadf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.4 MB (453398787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06199c5e43d88a8cb03ea1406451237b87b92a687ff6e86d8ef5c5c703bef6b`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:18:49 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:29:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:29:12 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 08:29:14 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 08:29:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 08:29:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 08:30:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee21c095769a5f6d4c660816b6b65bd44d4d5591ff5bda190f0a99ec88374c0f`  
		Last Modified: Sat, 08 Sep 2018 08:55:10 GMT  
		Size: 130.8 MB (130840689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd95e4300189dbc63a9848130577e37b48554de88ffefeb0d4855432f30179c`  
		Last Modified: Sat, 08 Sep 2018 08:54:22 GMT  
		Size: 200.9 KB (200950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c29861469891982efd6070d65fd0b88cecb9df6580a301a5643ffd74626390`  
		Last Modified: Sat, 08 Sep 2018 08:54:23 GMT  
		Size: 3.6 MB (3606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21` - linux; s390x

```console
$ docker pull erlang@sha256:5e5ed4f0d4bb8759f52f4891aba7fc05d70f63b4cab0bd14cc1e7b0f4477cb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.6 MB (453567585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5dcba92f5d35d09584b9c791f9649a06e6ce57205427163b4d4eae1610d513`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:41:50 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:49:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:49:41 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 11:49:41 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 11:49:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 11:49:44 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 11:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b96781ad99c7e7c03f18da432f40a491a75c9dedb5a53792c7d24911cd3c1e`  
		Last Modified: Sat, 08 Sep 2018 12:04:17 GMT  
		Size: 134.2 MB (134221488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a3896a2662f2884c00a387dbe50e4651865750f3ab36e5e55b8ddc1d3ac52`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 200.9 KB (200949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae545bcd29f9a657343595a15d939cc8f64f20ea5857e7653f318d072639c657`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0`

```console
$ docker pull erlang@sha256:193aceb26478b4686c941db061c704901c6f335ee18b59ec84274ececca12209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0` - linux; amd64

```console
$ docker pull erlang@sha256:cf85dc19a29d5e1f810b11b9d05005f37eee9790e35fa73795eafda6768fca2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 MB (460841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197f5469260c5186d05f61d029d5992832b42996e0c9bac30c8562a5cd5028fa`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:19:37 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 18:40:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:40:42 GMT
CMD ["erl"]
# Fri, 07 Sep 2018 18:40:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 07 Sep 2018 18:40:48 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 07 Sep 2018 18:40:48 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 07 Sep 2018 18:41:31 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3af62fd78e9522843b7f692510e87c11ce4eff94151e276edfafed7ac99041e`  
		Last Modified: Fri, 07 Sep 2018 19:11:07 GMT  
		Size: 133.4 MB (133374245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1609f616cec87f1713a1c1df2505c5b2829719123ecbca7235b9e6cdae00f762`  
		Last Modified: Fri, 07 Sep 2018 19:10:49 GMT  
		Size: 200.9 KB (200940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a11615db92ca50f00a691e5fa8b6071a5c07d7c4a299ec1a3a873deb8f6f9`  
		Last Modified: Fri, 07 Sep 2018 19:10:50 GMT  
		Size: 3.6 MB (3605707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0` - linux; arm variant v7

```console
$ docker pull erlang@sha256:28784aa5f71b181feae0e442ff54496988923b6befe85396a154de34614d0b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.7 MB (425704602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306716d0b26812f5bd09d13e6cb573b5f043e8f819b47bb6e0c5c4b1b6baa672`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:58:13 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:07:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:07:10 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 12:07:11 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 12:07:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 12:07:15 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 12:07:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fb97791bec29a84552544c1cae377c745afa50a07745a59170f1877a158541`  
		Last Modified: Sat, 08 Sep 2018 12:15:22 GMT  
		Size: 126.1 MB (126098062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d233b7ae341142ff5526d29eaace26b53b4781b42866d7e5b0eaaa1515348f`  
		Last Modified: Sat, 08 Sep 2018 12:14:59 GMT  
		Size: 200.9 KB (200922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e654aabcf0b40553af6730c8851aa290f6b47106b925966d68b651947734a94d`  
		Last Modified: Sat, 08 Sep 2018 12:15:01 GMT  
		Size: 3.6 MB (3607320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0` - linux; 386

```console
$ docker pull erlang@sha256:db76eef99f66a8ca42014d84474b2492c7f1c72de4765aff3a4bd55b987a2cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.2 MB (465156139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcd8e4f3c5ab83436b1a49fe3aa00455e1d07b17cffdd4b93043659a02888b1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:48:06 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 10:58:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:58:33 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 10:58:33 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 10:58:36 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 10:58:36 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 10:58:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1045fbd3b829757c455024aae6d3c2f5320279100ec0f0e07e677d0aa9e93ead`  
		Last Modified: Sat, 08 Sep 2018 11:19:21 GMT  
		Size: 130.2 MB (130151106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7d35be18563c2d0c97fc7a1ea637f7a8891fce32aaa39f5e2e3f811cca585b`  
		Last Modified: Sat, 08 Sep 2018 11:19:03 GMT  
		Size: 201.0 KB (200951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fd5c434808cb031e862b95deaa564c45d62987809e5e9331f6ca26bc766cf1`  
		Last Modified: Sat, 08 Sep 2018 11:19:04 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0` - linux; ppc64le

```console
$ docker pull erlang@sha256:cb763db2a54a4f3899b7fdf11c7f63520b912e5de57591773498570ae1cfadf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.4 MB (453398787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06199c5e43d88a8cb03ea1406451237b87b92a687ff6e86d8ef5c5c703bef6b`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:18:49 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:29:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:29:12 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 08:29:14 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 08:29:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 08:29:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 08:30:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee21c095769a5f6d4c660816b6b65bd44d4d5591ff5bda190f0a99ec88374c0f`  
		Last Modified: Sat, 08 Sep 2018 08:55:10 GMT  
		Size: 130.8 MB (130840689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd95e4300189dbc63a9848130577e37b48554de88ffefeb0d4855432f30179c`  
		Last Modified: Sat, 08 Sep 2018 08:54:22 GMT  
		Size: 200.9 KB (200950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c29861469891982efd6070d65fd0b88cecb9df6580a301a5643ffd74626390`  
		Last Modified: Sat, 08 Sep 2018 08:54:23 GMT  
		Size: 3.6 MB (3606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0` - linux; s390x

```console
$ docker pull erlang@sha256:5e5ed4f0d4bb8759f52f4891aba7fc05d70f63b4cab0bd14cc1e7b0f4477cb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.6 MB (453567585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5dcba92f5d35d09584b9c791f9649a06e6ce57205427163b4d4eae1610d513`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:41:50 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:49:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:49:41 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 11:49:41 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 11:49:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 11:49:44 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 11:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b96781ad99c7e7c03f18da432f40a491a75c9dedb5a53792c7d24911cd3c1e`  
		Last Modified: Sat, 08 Sep 2018 12:04:17 GMT  
		Size: 134.2 MB (134221488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a3896a2662f2884c00a387dbe50e4651865750f3ab36e5e55b8ddc1d3ac52`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 200.9 KB (200949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae545bcd29f9a657343595a15d939cc8f64f20ea5857e7653f318d072639c657`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0.8`

```console
$ docker pull erlang@sha256:193aceb26478b4686c941db061c704901c6f335ee18b59ec84274ececca12209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0.8` - linux; amd64

```console
$ docker pull erlang@sha256:cf85dc19a29d5e1f810b11b9d05005f37eee9790e35fa73795eafda6768fca2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 MB (460841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197f5469260c5186d05f61d029d5992832b42996e0c9bac30c8562a5cd5028fa`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:19:37 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 18:40:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:40:42 GMT
CMD ["erl"]
# Fri, 07 Sep 2018 18:40:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 07 Sep 2018 18:40:48 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 07 Sep 2018 18:40:48 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 07 Sep 2018 18:41:31 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3af62fd78e9522843b7f692510e87c11ce4eff94151e276edfafed7ac99041e`  
		Last Modified: Fri, 07 Sep 2018 19:11:07 GMT  
		Size: 133.4 MB (133374245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1609f616cec87f1713a1c1df2505c5b2829719123ecbca7235b9e6cdae00f762`  
		Last Modified: Fri, 07 Sep 2018 19:10:49 GMT  
		Size: 200.9 KB (200940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a11615db92ca50f00a691e5fa8b6071a5c07d7c4a299ec1a3a873deb8f6f9`  
		Last Modified: Fri, 07 Sep 2018 19:10:50 GMT  
		Size: 3.6 MB (3605707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8` - linux; arm variant v7

```console
$ docker pull erlang@sha256:28784aa5f71b181feae0e442ff54496988923b6befe85396a154de34614d0b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.7 MB (425704602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306716d0b26812f5bd09d13e6cb573b5f043e8f819b47bb6e0c5c4b1b6baa672`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:58:13 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:07:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:07:10 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 12:07:11 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 12:07:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 12:07:15 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 12:07:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fb97791bec29a84552544c1cae377c745afa50a07745a59170f1877a158541`  
		Last Modified: Sat, 08 Sep 2018 12:15:22 GMT  
		Size: 126.1 MB (126098062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d233b7ae341142ff5526d29eaace26b53b4781b42866d7e5b0eaaa1515348f`  
		Last Modified: Sat, 08 Sep 2018 12:14:59 GMT  
		Size: 200.9 KB (200922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e654aabcf0b40553af6730c8851aa290f6b47106b925966d68b651947734a94d`  
		Last Modified: Sat, 08 Sep 2018 12:15:01 GMT  
		Size: 3.6 MB (3607320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8` - linux; 386

```console
$ docker pull erlang@sha256:db76eef99f66a8ca42014d84474b2492c7f1c72de4765aff3a4bd55b987a2cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.2 MB (465156139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcd8e4f3c5ab83436b1a49fe3aa00455e1d07b17cffdd4b93043659a02888b1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:48:06 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 10:58:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:58:33 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 10:58:33 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 10:58:36 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 10:58:36 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 10:58:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1045fbd3b829757c455024aae6d3c2f5320279100ec0f0e07e677d0aa9e93ead`  
		Last Modified: Sat, 08 Sep 2018 11:19:21 GMT  
		Size: 130.2 MB (130151106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7d35be18563c2d0c97fc7a1ea637f7a8891fce32aaa39f5e2e3f811cca585b`  
		Last Modified: Sat, 08 Sep 2018 11:19:03 GMT  
		Size: 201.0 KB (200951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fd5c434808cb031e862b95deaa564c45d62987809e5e9331f6ca26bc766cf1`  
		Last Modified: Sat, 08 Sep 2018 11:19:04 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8` - linux; ppc64le

```console
$ docker pull erlang@sha256:cb763db2a54a4f3899b7fdf11c7f63520b912e5de57591773498570ae1cfadf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.4 MB (453398787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06199c5e43d88a8cb03ea1406451237b87b92a687ff6e86d8ef5c5c703bef6b`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:18:49 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:29:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:29:12 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 08:29:14 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 08:29:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 08:29:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 08:30:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee21c095769a5f6d4c660816b6b65bd44d4d5591ff5bda190f0a99ec88374c0f`  
		Last Modified: Sat, 08 Sep 2018 08:55:10 GMT  
		Size: 130.8 MB (130840689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd95e4300189dbc63a9848130577e37b48554de88ffefeb0d4855432f30179c`  
		Last Modified: Sat, 08 Sep 2018 08:54:22 GMT  
		Size: 200.9 KB (200950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c29861469891982efd6070d65fd0b88cecb9df6580a301a5643ffd74626390`  
		Last Modified: Sat, 08 Sep 2018 08:54:23 GMT  
		Size: 3.6 MB (3606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8` - linux; s390x

```console
$ docker pull erlang@sha256:5e5ed4f0d4bb8759f52f4891aba7fc05d70f63b4cab0bd14cc1e7b0f4477cb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.6 MB (453567585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5dcba92f5d35d09584b9c791f9649a06e6ce57205427163b4d4eae1610d513`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:41:50 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:49:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:49:41 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 11:49:41 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 11:49:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 11:49:44 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 11:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b96781ad99c7e7c03f18da432f40a491a75c9dedb5a53792c7d24911cd3c1e`  
		Last Modified: Sat, 08 Sep 2018 12:04:17 GMT  
		Size: 134.2 MB (134221488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a3896a2662f2884c00a387dbe50e4651865750f3ab36e5e55b8ddc1d3ac52`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 200.9 KB (200949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae545bcd29f9a657343595a15d939cc8f64f20ea5857e7653f318d072639c657`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0.8-alpine`

```console
$ docker pull erlang@sha256:091de29d59607c85528fd24221316f1b4888dc04f97fd46b183657c723e64804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0.8-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:c6023ad136bc6668695d57fc0e9f074cc57bac6cf21ae46e6b3082ff2926784f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44567991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b855ce7e890415ae91d0aff17679632ffd1f46fa934e21d5710b04073626c69f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:57:47 GMT
ENV OTP_VERSION=21.0.8
# Tue, 11 Sep 2018 23:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:10:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62433e4a89d3d050f36f50ed6540a0c56bb8b9b57178aa9443f7a559e2cea053`  
		Last Modified: Tue, 11 Sep 2018 23:21:35 GMT  
		Size: 42.4 MB (42361060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:83a86b58523257fff2cd64ee4410b6c0e5928c47ea82a2470f0457f280a36bae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41137583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ecbb2b726ae1b1192ac69fe0e60425b8be568a98ee0e7fe86ab5ed4c231a8cb`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 09:02:29 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 09:11:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 09:11:58 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2906bbc589f8fc4c228c713a52287fbe6818bef3698e1e1e9e4c78f566e75abe`  
		Last Modified: Sat, 08 Sep 2018 09:18:38 GMT  
		Size: 39.0 MB (39037893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-alpine` - linux; 386

```console
$ docker pull erlang@sha256:e04cda32d52fed30e5a34e095696aeed55225db40ed7b859d46649e88a8c8c94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44407228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83736dea03353bc6648b1bf3857dff0567c988d573096c411e1c697b2d204b8d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:08:10 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:18:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 11:18:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3517722c8c1546afc34fe634f7b9be709669f911218052ca2e84c26d48013`  
		Last Modified: Sat, 08 Sep 2018 11:20:12 GMT  
		Size: 42.1 MB (42136133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:ae603bee4c04a57c26238b54b5fd9c0101f01a2d7e2ba1dcfd01c8ec20a09b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41598750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca763d7a5d53a2b96d43b9b1328dde2c4961a92fdf5bc0bacd8aa0be013f457`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 08:44:21 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:52:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 08:52:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17fabc46c817220e4c3574b4f48b3884072b65fc442d0a42d7c1292dcb327a`  
		Last Modified: Sat, 08 Sep 2018 08:57:24 GMT  
		Size: 39.4 MB (39403713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:91c24c60406fab21d081da1151a8e84d85cb24586a89ac9812017990a09e48d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41699346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6927ea1c6e6852d8c085aca8ed20caaefbe67655ba57de5067eb1b8b9970e273`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:55:46 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:01:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 12:01:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cd8d74bb6fa61ceb209818469877328df1f9b5f4935599e4b0bfba5c6208b1`  
		Last Modified: Sat, 08 Sep 2018 12:05:30 GMT  
		Size: 39.4 MB (39391700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0.8-slim`

```console
$ docker pull erlang@sha256:4ae52c173be9ffed0e6738dd923d856d51e767f7609097a043196ef3e1a222c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0.8-slim` - linux; amd64

```console
$ docker pull erlang@sha256:610d88cf9a0fdd8ed9fa0de21b599531b252f34bd00dd8733dd8cd2868f5a98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106659446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476bcaee650d6ebefae6cdb67c98fb4d676773f887e6ede2408ae6384b9273b9`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 18:41:49 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 19:00:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 19:00:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e90a8e096283633b672576699af97e080cee11e1ec56bd3710fec8e8dc25c`  
		Last Modified: Fri, 07 Sep 2018 19:11:37 GMT  
		Size: 61.3 MB (61349386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:26e57a12a12808c1e58aefc16b2ffeaeebe654a8c027c37fb8d508a179687be3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98333462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347f85998c51c011c97015526ac9364eb84e1773cf6683e594b63bc81108ef2d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 12:08:25 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:14:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:14:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa02d54f8121327856c1da554180c63cd4b9e7393344bb453d2f7a0ad8754b1b`  
		Last Modified: Sat, 08 Sep 2018 12:16:26 GMT  
		Size: 56.3 MB (56270792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-slim` - linux; 386

```console
$ docker pull erlang@sha256:1e3032bc5218088b88b75d56b4181f084fb2f5c18415f5181c65bb6f65f842d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110430901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ffac522f8308e3520e82ac94b224e3d56ac585f6cec186e89dad543e530d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 10:59:17 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:08:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:08:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e008b2d1f783d580276c50f6933218af1d2880480a45131056a515fc1481e4a`  
		Last Modified: Sat, 08 Sep 2018 11:19:50 GMT  
		Size: 64.4 MB (64391855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:76919359ca2771a57f5e4974df78df2f7b5e4b37bfdb9754278e2c6ee0537d02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb88cee380ac895bfef5a4b4ff6484883c69886e30580ed2748e90c9bd456e0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 08:32:20 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:41:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7679d616e7bf8e81661027a88b7432a346963e0a9a4cc5697a11b6bb257565`  
		Last Modified: Sat, 08 Sep 2018 08:56:29 GMT  
		Size: 58.3 MB (58342286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0.8-slim` - linux; s390x

```console
$ docker pull erlang@sha256:f8d1e0ad929e6c13e980072380aacdb361fd012cd74f24c138f47fa8265a2513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105080232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b3a7ecaf7eebe1f211458a020b3710e9d4f3edb5538219c7283a4323dbdb3d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 11:50:14 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:55:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:55:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540eda3367dbdd1618eff88dc444cf261eed0d61bfdaf4c3b1c94d0578ae58a`  
		Last Modified: Sat, 08 Sep 2018 12:04:57 GMT  
		Size: 59.9 MB (59880604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0-alpine`

```console
$ docker pull erlang@sha256:091de29d59607c85528fd24221316f1b4888dc04f97fd46b183657c723e64804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:c6023ad136bc6668695d57fc0e9f074cc57bac6cf21ae46e6b3082ff2926784f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44567991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b855ce7e890415ae91d0aff17679632ffd1f46fa934e21d5710b04073626c69f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:57:47 GMT
ENV OTP_VERSION=21.0.8
# Tue, 11 Sep 2018 23:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:10:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62433e4a89d3d050f36f50ed6540a0c56bb8b9b57178aa9443f7a559e2cea053`  
		Last Modified: Tue, 11 Sep 2018 23:21:35 GMT  
		Size: 42.4 MB (42361060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:83a86b58523257fff2cd64ee4410b6c0e5928c47ea82a2470f0457f280a36bae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41137583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ecbb2b726ae1b1192ac69fe0e60425b8be568a98ee0e7fe86ab5ed4c231a8cb`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 09:02:29 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 09:11:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 09:11:58 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2906bbc589f8fc4c228c713a52287fbe6818bef3698e1e1e9e4c78f566e75abe`  
		Last Modified: Sat, 08 Sep 2018 09:18:38 GMT  
		Size: 39.0 MB (39037893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-alpine` - linux; 386

```console
$ docker pull erlang@sha256:e04cda32d52fed30e5a34e095696aeed55225db40ed7b859d46649e88a8c8c94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44407228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83736dea03353bc6648b1bf3857dff0567c988d573096c411e1c697b2d204b8d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:08:10 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:18:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 11:18:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3517722c8c1546afc34fe634f7b9be709669f911218052ca2e84c26d48013`  
		Last Modified: Sat, 08 Sep 2018 11:20:12 GMT  
		Size: 42.1 MB (42136133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:ae603bee4c04a57c26238b54b5fd9c0101f01a2d7e2ba1dcfd01c8ec20a09b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41598750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca763d7a5d53a2b96d43b9b1328dde2c4961a92fdf5bc0bacd8aa0be013f457`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 08:44:21 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:52:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 08:52:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17fabc46c817220e4c3574b4f48b3884072b65fc442d0a42d7c1292dcb327a`  
		Last Modified: Sat, 08 Sep 2018 08:57:24 GMT  
		Size: 39.4 MB (39403713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:91c24c60406fab21d081da1151a8e84d85cb24586a89ac9812017990a09e48d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41699346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6927ea1c6e6852d8c085aca8ed20caaefbe67655ba57de5067eb1b8b9970e273`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:55:46 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:01:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 12:01:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cd8d74bb6fa61ceb209818469877328df1f9b5f4935599e4b0bfba5c6208b1`  
		Last Modified: Sat, 08 Sep 2018 12:05:30 GMT  
		Size: 39.4 MB (39391700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21.0-slim`

```console
$ docker pull erlang@sha256:4ae52c173be9ffed0e6738dd923d856d51e767f7609097a043196ef3e1a222c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21.0-slim` - linux; amd64

```console
$ docker pull erlang@sha256:610d88cf9a0fdd8ed9fa0de21b599531b252f34bd00dd8733dd8cd2868f5a98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106659446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476bcaee650d6ebefae6cdb67c98fb4d676773f887e6ede2408ae6384b9273b9`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 18:41:49 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 19:00:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 19:00:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e90a8e096283633b672576699af97e080cee11e1ec56bd3710fec8e8dc25c`  
		Last Modified: Fri, 07 Sep 2018 19:11:37 GMT  
		Size: 61.3 MB (61349386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:26e57a12a12808c1e58aefc16b2ffeaeebe654a8c027c37fb8d508a179687be3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98333462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347f85998c51c011c97015526ac9364eb84e1773cf6683e594b63bc81108ef2d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 12:08:25 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:14:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:14:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa02d54f8121327856c1da554180c63cd4b9e7393344bb453d2f7a0ad8754b1b`  
		Last Modified: Sat, 08 Sep 2018 12:16:26 GMT  
		Size: 56.3 MB (56270792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-slim` - linux; 386

```console
$ docker pull erlang@sha256:1e3032bc5218088b88b75d56b4181f084fb2f5c18415f5181c65bb6f65f842d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110430901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ffac522f8308e3520e82ac94b224e3d56ac585f6cec186e89dad543e530d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 10:59:17 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:08:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:08:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e008b2d1f783d580276c50f6933218af1d2880480a45131056a515fc1481e4a`  
		Last Modified: Sat, 08 Sep 2018 11:19:50 GMT  
		Size: 64.4 MB (64391855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:76919359ca2771a57f5e4974df78df2f7b5e4b37bfdb9754278e2c6ee0537d02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb88cee380ac895bfef5a4b4ff6484883c69886e30580ed2748e90c9bd456e0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 08:32:20 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:41:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7679d616e7bf8e81661027a88b7432a346963e0a9a4cc5697a11b6bb257565`  
		Last Modified: Sat, 08 Sep 2018 08:56:29 GMT  
		Size: 58.3 MB (58342286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21.0-slim` - linux; s390x

```console
$ docker pull erlang@sha256:f8d1e0ad929e6c13e980072380aacdb361fd012cd74f24c138f47fa8265a2513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105080232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b3a7ecaf7eebe1f211458a020b3710e9d4f3edb5538219c7283a4323dbdb3d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 11:50:14 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:55:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:55:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540eda3367dbdd1618eff88dc444cf261eed0d61bfdaf4c3b1c94d0578ae58a`  
		Last Modified: Sat, 08 Sep 2018 12:04:57 GMT  
		Size: 59.9 MB (59880604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21-alpine`

```console
$ docker pull erlang@sha256:091de29d59607c85528fd24221316f1b4888dc04f97fd46b183657c723e64804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:c6023ad136bc6668695d57fc0e9f074cc57bac6cf21ae46e6b3082ff2926784f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44567991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b855ce7e890415ae91d0aff17679632ffd1f46fa934e21d5710b04073626c69f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:57:47 GMT
ENV OTP_VERSION=21.0.8
# Tue, 11 Sep 2018 23:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:10:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62433e4a89d3d050f36f50ed6540a0c56bb8b9b57178aa9443f7a559e2cea053`  
		Last Modified: Tue, 11 Sep 2018 23:21:35 GMT  
		Size: 42.4 MB (42361060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:83a86b58523257fff2cd64ee4410b6c0e5928c47ea82a2470f0457f280a36bae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41137583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ecbb2b726ae1b1192ac69fe0e60425b8be568a98ee0e7fe86ab5ed4c231a8cb`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 09:02:29 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 09:11:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 09:11:58 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2906bbc589f8fc4c228c713a52287fbe6818bef3698e1e1e9e4c78f566e75abe`  
		Last Modified: Sat, 08 Sep 2018 09:18:38 GMT  
		Size: 39.0 MB (39037893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-alpine` - linux; 386

```console
$ docker pull erlang@sha256:e04cda32d52fed30e5a34e095696aeed55225db40ed7b859d46649e88a8c8c94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44407228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83736dea03353bc6648b1bf3857dff0567c988d573096c411e1c697b2d204b8d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:08:10 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:18:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 11:18:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3517722c8c1546afc34fe634f7b9be709669f911218052ca2e84c26d48013`  
		Last Modified: Sat, 08 Sep 2018 11:20:12 GMT  
		Size: 42.1 MB (42136133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:ae603bee4c04a57c26238b54b5fd9c0101f01a2d7e2ba1dcfd01c8ec20a09b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41598750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca763d7a5d53a2b96d43b9b1328dde2c4961a92fdf5bc0bacd8aa0be013f457`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 08:44:21 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:52:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 08:52:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17fabc46c817220e4c3574b4f48b3884072b65fc442d0a42d7c1292dcb327a`  
		Last Modified: Sat, 08 Sep 2018 08:57:24 GMT  
		Size: 39.4 MB (39403713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-alpine` - linux; s390x

```console
$ docker pull erlang@sha256:91c24c60406fab21d081da1151a8e84d85cb24586a89ac9812017990a09e48d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41699346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6927ea1c6e6852d8c085aca8ed20caaefbe67655ba57de5067eb1b8b9970e273`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:55:46 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:01:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 12:01:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cd8d74bb6fa61ceb209818469877328df1f9b5f4935599e4b0bfba5c6208b1`  
		Last Modified: Sat, 08 Sep 2018 12:05:30 GMT  
		Size: 39.4 MB (39391700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:21-slim`

```console
$ docker pull erlang@sha256:4ae52c173be9ffed0e6738dd923d856d51e767f7609097a043196ef3e1a222c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:21-slim` - linux; amd64

```console
$ docker pull erlang@sha256:610d88cf9a0fdd8ed9fa0de21b599531b252f34bd00dd8733dd8cd2868f5a98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106659446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476bcaee650d6ebefae6cdb67c98fb4d676773f887e6ede2408ae6384b9273b9`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 18:41:49 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 19:00:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 19:00:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e90a8e096283633b672576699af97e080cee11e1ec56bd3710fec8e8dc25c`  
		Last Modified: Fri, 07 Sep 2018 19:11:37 GMT  
		Size: 61.3 MB (61349386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:26e57a12a12808c1e58aefc16b2ffeaeebe654a8c027c37fb8d508a179687be3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98333462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347f85998c51c011c97015526ac9364eb84e1773cf6683e594b63bc81108ef2d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 12:08:25 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:14:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:14:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa02d54f8121327856c1da554180c63cd4b9e7393344bb453d2f7a0ad8754b1b`  
		Last Modified: Sat, 08 Sep 2018 12:16:26 GMT  
		Size: 56.3 MB (56270792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-slim` - linux; 386

```console
$ docker pull erlang@sha256:1e3032bc5218088b88b75d56b4181f084fb2f5c18415f5181c65bb6f65f842d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110430901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ffac522f8308e3520e82ac94b224e3d56ac585f6cec186e89dad543e530d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 10:59:17 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:08:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:08:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e008b2d1f783d580276c50f6933218af1d2880480a45131056a515fc1481e4a`  
		Last Modified: Sat, 08 Sep 2018 11:19:50 GMT  
		Size: 64.4 MB (64391855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:76919359ca2771a57f5e4974df78df2f7b5e4b37bfdb9754278e2c6ee0537d02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb88cee380ac895bfef5a4b4ff6484883c69886e30580ed2748e90c9bd456e0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 08:32:20 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:41:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7679d616e7bf8e81661027a88b7432a346963e0a9a4cc5697a11b6bb257565`  
		Last Modified: Sat, 08 Sep 2018 08:56:29 GMT  
		Size: 58.3 MB (58342286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:21-slim` - linux; s390x

```console
$ docker pull erlang@sha256:f8d1e0ad929e6c13e980072380aacdb361fd012cd74f24c138f47fa8265a2513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105080232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b3a7ecaf7eebe1f211458a020b3710e9d4f3edb5538219c7283a4323dbdb3d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 11:50:14 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:55:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:55:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540eda3367dbdd1618eff88dc444cf261eed0d61bfdaf4c3b1c94d0578ae58a`  
		Last Modified: Sat, 08 Sep 2018 12:04:57 GMT  
		Size: 59.9 MB (59880604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:alpine`

```console
$ docker pull erlang@sha256:091de29d59607c85528fd24221316f1b4888dc04f97fd46b183657c723e64804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:alpine` - linux; amd64

```console
$ docker pull erlang@sha256:c6023ad136bc6668695d57fc0e9f074cc57bac6cf21ae46e6b3082ff2926784f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44567991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b855ce7e890415ae91d0aff17679632ffd1f46fa934e21d5710b04073626c69f`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:57:47 GMT
ENV OTP_VERSION=21.0.8
# Tue, 11 Sep 2018 23:10:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 11 Sep 2018 23:10:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62433e4a89d3d050f36f50ed6540a0c56bb8b9b57178aa9443f7a559e2cea053`  
		Last Modified: Tue, 11 Sep 2018 23:21:35 GMT  
		Size: 42.4 MB (42361060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:alpine` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:83a86b58523257fff2cd64ee4410b6c0e5928c47ea82a2470f0457f280a36bae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41137583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ecbb2b726ae1b1192ac69fe0e60425b8be568a98ee0e7fe86ab5ed4c231a8cb`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 09:02:29 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 09:11:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 09:11:58 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2906bbc589f8fc4c228c713a52287fbe6818bef3698e1e1e9e4c78f566e75abe`  
		Last Modified: Sat, 08 Sep 2018 09:18:38 GMT  
		Size: 39.0 MB (39037893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:alpine` - linux; 386

```console
$ docker pull erlang@sha256:e04cda32d52fed30e5a34e095696aeed55225db40ed7b859d46649e88a8c8c94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44407228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83736dea03353bc6648b1bf3857dff0567c988d573096c411e1c697b2d204b8d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:08:10 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:18:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 11:18:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3517722c8c1546afc34fe634f7b9be709669f911218052ca2e84c26d48013`  
		Last Modified: Sat, 08 Sep 2018 11:20:12 GMT  
		Size: 42.1 MB (42136133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:alpine` - linux; ppc64le

```console
$ docker pull erlang@sha256:ae603bee4c04a57c26238b54b5fd9c0101f01a2d7e2ba1dcfd01c8ec20a09b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41598750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca763d7a5d53a2b96d43b9b1328dde2c4961a92fdf5bc0bacd8aa0be013f457`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 08:44:21 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:52:18 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 08:52:21 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed17fabc46c817220e4c3574b4f48b3884072b65fc442d0a42d7c1292dcb327a`  
		Last Modified: Sat, 08 Sep 2018 08:57:24 GMT  
		Size: 39.4 MB (39403713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:alpine` - linux; s390x

```console
$ docker pull erlang@sha256:91c24c60406fab21d081da1151a8e84d85cb24586a89ac9812017990a09e48d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41699346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6927ea1c6e6852d8c085aca8ed20caaefbe67655ba57de5067eb1b8b9970e273`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 08 Sep 2018 11:55:46 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:01:02 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Sat, 08 Sep 2018 12:01:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cd8d74bb6fa61ceb209818469877328df1f9b5f4935599e4b0bfba5c6208b1`  
		Last Modified: Sat, 08 Sep 2018 12:05:30 GMT  
		Size: 39.4 MB (39391700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:latest`

```console
$ docker pull erlang@sha256:193aceb26478b4686c941db061c704901c6f335ee18b59ec84274ececca12209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:latest` - linux; amd64

```console
$ docker pull erlang@sha256:cf85dc19a29d5e1f810b11b9d05005f37eee9790e35fa73795eafda6768fca2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 MB (460841715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197f5469260c5186d05f61d029d5992832b42996e0c9bac30c8562a5cd5028fa`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:19:37 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 18:40:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 18:40:42 GMT
CMD ["erl"]
# Fri, 07 Sep 2018 18:40:43 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 07 Sep 2018 18:40:48 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 07 Sep 2018 18:40:48 GMT
ENV REBAR3_VERSION=3.6.1
# Fri, 07 Sep 2018 18:41:31 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bdf9e584cc733044425cc166ce90743b25f7003cb06408b905030f76200b2a`  
		Last Modified: Tue, 04 Sep 2018 22:53:52 GMT  
		Size: 213.2 MB (213208939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3af62fd78e9522843b7f692510e87c11ce4eff94151e276edfafed7ac99041e`  
		Last Modified: Fri, 07 Sep 2018 19:11:07 GMT  
		Size: 133.4 MB (133374245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1609f616cec87f1713a1c1df2505c5b2829719123ecbca7235b9e6cdae00f762`  
		Last Modified: Fri, 07 Sep 2018 19:10:49 GMT  
		Size: 200.9 KB (200940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a11615db92ca50f00a691e5fa8b6071a5c07d7c4a299ec1a3a873deb8f6f9`  
		Last Modified: Fri, 07 Sep 2018 19:10:50 GMT  
		Size: 3.6 MB (3605707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:latest` - linux; arm variant v7

```console
$ docker pull erlang@sha256:28784aa5f71b181feae0e442ff54496988923b6befe85396a154de34614d0b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.7 MB (425704602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306716d0b26812f5bd09d13e6cb573b5f043e8f819b47bb6e0c5c4b1b6baa672`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:58:13 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:07:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:07:10 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 12:07:11 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 12:07:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 12:07:15 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 12:07:52 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247050a5017030d16351675bb3d21d3413470130201b75e5a0688c5d20932c20`  
		Last Modified: Wed, 05 Sep 2018 12:57:31 GMT  
		Size: 46.4 MB (46380896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616fd9b504f68976445f1c199b9d33089646acb282faa652e819a52e1de7cdc`  
		Last Modified: Wed, 05 Sep 2018 12:58:39 GMT  
		Size: 194.0 MB (194001521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fb97791bec29a84552544c1cae377c745afa50a07745a59170f1877a158541`  
		Last Modified: Sat, 08 Sep 2018 12:15:22 GMT  
		Size: 126.1 MB (126098062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d233b7ae341142ff5526d29eaace26b53b4781b42866d7e5b0eaaa1515348f`  
		Last Modified: Sat, 08 Sep 2018 12:14:59 GMT  
		Size: 200.9 KB (200922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e654aabcf0b40553af6730c8851aa290f6b47106b925966d68b651947734a94d`  
		Last Modified: Sat, 08 Sep 2018 12:15:01 GMT  
		Size: 3.6 MB (3607320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:latest` - linux; 386

```console
$ docker pull erlang@sha256:db76eef99f66a8ca42014d84474b2492c7f1c72de4765aff3a4bd55b987a2cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.2 MB (465156139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcd8e4f3c5ab83436b1a49fe3aa00455e1d07b17cffdd4b93043659a02888b1`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:43:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:48:06 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 10:58:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 10:58:33 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 10:58:33 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 10:58:36 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 10:58:36 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 10:58:57 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6d01b2edcff2b1d748bcebd9d4632d0888c58beb4a379685de71ec90170d1`  
		Last Modified: Wed, 05 Sep 2018 12:11:26 GMT  
		Size: 218.3 MB (218257236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1045fbd3b829757c455024aae6d3c2f5320279100ec0f0e07e677d0aa9e93ead`  
		Last Modified: Sat, 08 Sep 2018 11:19:21 GMT  
		Size: 130.2 MB (130151106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7d35be18563c2d0c97fc7a1ea637f7a8891fce32aaa39f5e2e3f811cca585b`  
		Last Modified: Sat, 08 Sep 2018 11:19:03 GMT  
		Size: 201.0 KB (200951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fd5c434808cb031e862b95deaa564c45d62987809e5e9331f6ca26bc766cf1`  
		Last Modified: Sat, 08 Sep 2018 11:19:04 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:latest` - linux; ppc64le

```console
$ docker pull erlang@sha256:cb763db2a54a4f3899b7fdf11c7f63520b912e5de57591773498570ae1cfadf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.4 MB (453398787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06199c5e43d88a8cb03ea1406451237b87b92a687ff6e86d8ef5c5c703bef6b`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:11:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:18:49 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:29:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:29:12 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 08:29:14 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 08:29:21 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 08:29:21 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 08:30:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da03ec1f820cafe53e7d98169ab4415ef2e7ef045d1a56f2cdc0709d466a6d6`  
		Last Modified: Wed, 05 Sep 2018 09:20:09 GMT  
		Size: 208.9 MB (208860995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee21c095769a5f6d4c660816b6b65bd44d4d5591ff5bda190f0a99ec88374c0f`  
		Last Modified: Sat, 08 Sep 2018 08:55:10 GMT  
		Size: 130.8 MB (130840689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd95e4300189dbc63a9848130577e37b48554de88ffefeb0d4855432f30179c`  
		Last Modified: Sat, 08 Sep 2018 08:54:22 GMT  
		Size: 200.9 KB (200950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c29861469891982efd6070d65fd0b88cecb9df6580a301a5643ffd74626390`  
		Last Modified: Sat, 08 Sep 2018 08:54:23 GMT  
		Size: 3.6 MB (3606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:latest` - linux; s390x

```console
$ docker pull erlang@sha256:5e5ed4f0d4bb8759f52f4891aba7fc05d70f63b4cab0bd14cc1e7b0f4477cb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.6 MB (453567585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5dcba92f5d35d09584b9c791f9649a06e6ce57205427163b4d4eae1610d513`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:41:50 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:49:41 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:49:41 GMT
CMD ["erl"]
# Sat, 08 Sep 2018 11:49:41 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 08 Sep 2018 11:49:44 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 08 Sep 2018 11:49:44 GMT
ENV REBAR3_VERSION=3.6.1
# Sat, 08 Sep 2018 11:50:02 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="40b3c85440f3235c7b149578d0211bdf57d1c66390f888bb771704f8abc71033" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27002e59df4806f0e1fd712071fbaa32f48b95b57fa67d840b480d65cd7f5007`  
		Last Modified: Wed, 05 Sep 2018 12:51:38 GMT  
		Size: 205.2 MB (205221426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b96781ad99c7e7c03f18da432f40a491a75c9dedb5a53792c7d24911cd3c1e`  
		Last Modified: Sat, 08 Sep 2018 12:04:17 GMT  
		Size: 134.2 MB (134221488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04a3896a2662f2884c00a387dbe50e4651865750f3ab36e5e55b8ddc1d3ac52`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 200.9 KB (200949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae545bcd29f9a657343595a15d939cc8f64f20ea5857e7653f318d072639c657`  
		Last Modified: Sat, 08 Sep 2018 12:04:01 GMT  
		Size: 3.6 MB (3607277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:slim`

```console
$ docker pull erlang@sha256:4ae52c173be9ffed0e6738dd923d856d51e767f7609097a043196ef3e1a222c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:slim` - linux; amd64

```console
$ docker pull erlang@sha256:610d88cf9a0fdd8ed9fa0de21b599531b252f34bd00dd8733dd8cd2868f5a98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106659446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476bcaee650d6ebefae6cdb67c98fb4d676773f887e6ede2408ae6384b9273b9`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 18:41:49 GMT
ENV OTP_VERSION=21.0.8
# Fri, 07 Sep 2018 19:00:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 07 Sep 2018 19:00:11 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e90a8e096283633b672576699af97e080cee11e1ec56bd3710fec8e8dc25c`  
		Last Modified: Fri, 07 Sep 2018 19:11:37 GMT  
		Size: 61.3 MB (61349386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:slim` - linux; arm variant v7

```console
$ docker pull erlang@sha256:26e57a12a12808c1e58aefc16b2ffeaeebe654a8c027c37fb8d508a179687be3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98333462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:347f85998c51c011c97015526ac9364eb84e1773cf6683e594b63bc81108ef2d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 12:08:25 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 12:14:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 12:14:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa02d54f8121327856c1da554180c63cd4b9e7393344bb453d2f7a0ad8754b1b`  
		Last Modified: Sat, 08 Sep 2018 12:16:26 GMT  
		Size: 56.3 MB (56270792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:1e3032bc5218088b88b75d56b4181f084fb2f5c18415f5181c65bb6f65f842d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110430901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ffac522f8308e3520e82ac94b224e3d56ac585f6cec186e89dad543e530d3c`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 10:59:17 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:08:03 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:08:03 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e008b2d1f783d580276c50f6933218af1d2880480a45131056a515fc1481e4a`  
		Last Modified: Sat, 08 Sep 2018 11:19:50 GMT  
		Size: 64.4 MB (64391855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:76919359ca2771a57f5e4974df78df2f7b5e4b37bfdb9754278e2c6ee0537d02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb88cee380ac895bfef5a4b4ff6484883c69886e30580ed2748e90c9bd456e0`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 08:32:20 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 08:41:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 08:41:20 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7679d616e7bf8e81661027a88b7432a346963e0a9a4cc5697a11b6bb257565`  
		Last Modified: Sat, 08 Sep 2018 08:56:29 GMT  
		Size: 58.3 MB (58342286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:f8d1e0ad929e6c13e980072380aacdb361fd012cd74f24c138f47fa8265a2513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105080232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b3a7ecaf7eebe1f211458a020b3710e9d4f3edb5538219c7283a4323dbdb3d`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Sat, 08 Sep 2018 11:50:14 GMT
ENV OTP_VERSION=21.0.8
# Sat, 08 Sep 2018 11:55:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="593c0cd52937564b1af540fb0df66d6210407bdd46e3a43b48cb3ea4f975cb03" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 08 Sep 2018 11:55:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9540eda3367dbdd1618eff88dc444cf261eed0d61bfdaf4c3b1c94d0578ae58a`  
		Last Modified: Sat, 08 Sep 2018 12:04:57 GMT  
		Size: 59.9 MB (59880604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
