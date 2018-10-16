## `erlang:18-slim`

```console
$ docker pull erlang@sha256:cc90d07b27dff477476d8e5ac3e03091ff9773a0ccf5233a8fb82f64ee48defb
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
$ docker pull erlang@sha256:42388d74485043ad89bf4bf03b1d5e3f1edac86254df58882b07afa4ef38be36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119945792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e433c6364d74c688406f740b5c0ab4a653e235525e7ebdc4a44d545d8b6c4158`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 03:40:01 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 16 Oct 2018 03:49:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 16 Oct 2018 03:49:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4a3a7c4a24a69a830e6a51aedaf4e3abe21817dc4ad2d560d431715ca1737`  
		Last Modified: Tue, 16 Oct 2018 04:15:18 GMT  
		Size: 65.7 MB (65693667 bytes)  
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
$ docker pull erlang@sha256:f66e736657fd1c18afd8a69ea415ea0d7e8ec2e64f7ed84b172b28872f87a48b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123918524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eda1f1867f8b8163c0a7125494706c14c20c1bbf55d7d5b4a3b20de9cec9e33`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:51:00 GMT
ENV OTP_VERSION=18.3.4.9
# Tue, 16 Oct 2018 21:01:42 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="25ef8ba3824cb726c4830abf32c2a2967925b1e33a8e8851dba596e933e2689a" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" --enable-sctp 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:01:42 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8514cd690461cc027e6c6f7c95f7d426dcd004220b7cc502da2bbb979a6fff67`  
		Last Modified: Tue, 16 Oct 2018 21:16:01 GMT  
		Size: 69.4 MB (69434235 bytes)  
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
