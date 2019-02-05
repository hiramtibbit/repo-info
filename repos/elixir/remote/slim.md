## `elixir:slim`

```console
$ docker pull elixir@sha256:ddf38900839f4d36ce6a1737051d15cf2e2ebc0473e6b0dbfba82c1029f092ef
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
$ docker pull elixir@sha256:56ef3b4fe82fcd6aebd2c6235e452c993cd46a765868fda01f4b58936d70c7b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113802389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53272d31ae64528f33cfe979c180132a2a9496512a87e7b848cb5f7ee84f483d`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Mon, 04 Feb 2019 23:32:04 GMT
ENV OTP_VERSION=21.2.5
# Mon, 04 Feb 2019 23:42:20 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 04 Feb 2019 23:42:21 GMT
CMD ["erl"]
# Tue, 05 Feb 2019 00:10:52 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Tue, 05 Feb 2019 00:11:54 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Feb 2019 00:11:54 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f01b0a13b5c7eb1f25cd2a43785893e84aedd88127888946de74ef0947899e`  
		Last Modified: Mon, 04 Feb 2019 23:54:10 GMT  
		Size: 61.7 MB (61742336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98207f658e6df289b1c89cf5572fa735b6eb764590f4d19b805d21ec38251045`  
		Last Modified: Tue, 05 Feb 2019 00:18:10 GMT  
		Size: 6.7 MB (6715304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm variant v7

```console
$ docker pull elixir@sha256:c740b1ab3a960ab070c3c01cab88266d7c8ef7bff1e7d4da382c5a8c51e54952
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105421395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1308088ef262f0051b4b1cda8fa4f118daba0e6ddc54cec6acbabf6eae54f6`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Sat, 26 Jan 2019 13:09:25 GMT
ENV OTP_VERSION=21.2.4
# Sat, 26 Jan 2019 13:15:13 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="833d31ac102536b752e474dc6d69be7cc3e37d2d944191317312b30b1ea8ef0d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 26 Jan 2019 13:15:15 GMT
CMD ["erl"]
# Fri, 01 Feb 2019 12:58:51 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Fri, 01 Feb 2019 13:00:32 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 13:00:33 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e590ee7c4067b7f69dd9a33df0b8b8846955952fe7b6bec5125dbb87a581952`  
		Last Modified: Sat, 26 Jan 2019 13:16:57 GMT  
		Size: 56.6 MB (56618859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2e30071d65bb0cbfa274bdcbd2fb0571512417374a0ac4168fa2f9ef016009`  
		Last Modified: Fri, 01 Feb 2019 13:01:40 GMT  
		Size: 6.7 MB (6714805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; arm64 variant v8

```console
$ docker pull elixir@sha256:d6c16541d33e9e1159338c6877f931c6dc15c56c3fcb2d5978301147cdbc4a6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107649466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39d869ef178f47febef7b1136f0107a261b95fedc4566c639d91ff8b2c70e55`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Sat, 26 Jan 2019 10:00:23 GMT
ENV OTP_VERSION=21.2.4
# Sat, 26 Jan 2019 10:14:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="833d31ac102536b752e474dc6d69be7cc3e37d2d944191317312b30b1ea8ef0d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 26 Jan 2019 10:15:00 GMT
CMD ["erl"]
# Fri, 01 Feb 2019 09:41:55 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Fri, 01 Feb 2019 09:44:48 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 09:44:49 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bd92c02f816b65ac3bb8b4188e181c84f38277e575e5eac45add6d6e008fd6`  
		Last Modified: Sat, 26 Jan 2019 10:42:24 GMT  
		Size: 57.8 MB (57808162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f21695dfccceaf7cce3a6b9a67c89a0e0633b3885512852f198353274b37d33`  
		Last Modified: Fri, 01 Feb 2019 09:48:29 GMT  
		Size: 6.7 MB (6715670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; 386

```console
$ docker pull elixir@sha256:49ee1bdeef00dfdef639d218303291943f9465a1782796bb642671ad57461e37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117549250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4d3fd7efe8662c927ae9deaef425f621808c7e58e2b4dbed3a46edd08248f6`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Sat, 26 Jan 2019 11:55:35 GMT
ENV OTP_VERSION=21.2.4
# Sat, 26 Jan 2019 12:06:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="833d31ac102536b752e474dc6d69be7cc3e37d2d944191317312b30b1ea8ef0d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 26 Jan 2019 12:06:48 GMT
CMD ["erl"]
# Fri, 01 Feb 2019 11:39:26 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Fri, 01 Feb 2019 11:40:37 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 11:40:37 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f683ed7404efbdba68d572f2221844aa7d984c2bfe8ff74081ccace3a7d4ce`  
		Last Modified: Sat, 26 Jan 2019 12:21:37 GMT  
		Size: 64.8 MB (64764680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d5f54783d6772bff37d1232ec70ed369581420c8196122f053ab6dee8da115`  
		Last Modified: Fri, 01 Feb 2019 11:42:48 GMT  
		Size: 6.7 MB (6715115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; ppc64le

```console
$ docker pull elixir@sha256:3ad0ef5604aa746df9b314c75f34aa718b0125da5e5202e2984e4d9efa4417e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58fc1989d2278f8c8c6c415a21347d1c0c4cb02506f7ab84017cbc103c622c1`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Tue, 05 Feb 2019 09:30:04 GMT
ENV OTP_VERSION=21.2.5
# Tue, 05 Feb 2019 09:38:33 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 05 Feb 2019 09:38:36 GMT
CMD ["erl"]
# Tue, 05 Feb 2019 10:05:15 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Tue, 05 Feb 2019 10:07:26 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Feb 2019 10:07:28 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ddcc1be1eeaa91d817c71e5117212bc4535d999b24c23eb28c0aaef2685939`  
		Last Modified: Tue, 05 Feb 2019 09:47:24 GMT  
		Size: 58.7 MB (58707899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d2c6d343d5736d14bf0201d6fd7a377996014a3f1050d29a460074029a9660`  
		Last Modified: Tue, 05 Feb 2019 10:17:49 GMT  
		Size: 6.7 MB (6715314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `elixir:slim` - linux; s390x

```console
$ docker pull elixir@sha256:7f3098bed14ac1d7363826659f91bbf89cbe6e9f71ecfddb84b51a804f3c4c15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112190356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15071f1b54817266c1ffe7755a9e9c97daa55c36d9150413fc0702ca6aa9c12f`
-	Default Command: `["iex"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Sat, 26 Jan 2019 12:52:46 GMT
ENV OTP_VERSION=21.2.4
# Sat, 26 Jan 2019 13:00:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="833d31ac102536b752e474dc6d69be7cc3e37d2d944191317312b30b1ea8ef0d" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Sat, 26 Jan 2019 13:00:33 GMT
CMD ["erl"]
# Fri, 01 Feb 2019 12:42:18 GMT
ENV ELIXIR_VERSION=v1.8.1 LANG=C.UTF-8
# Fri, 01 Feb 2019 12:43:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" 	&& ELIXIR_DOWNLOAD_SHA256="de8c636ea999392496ccd9a204ccccbc8cb7f417d948fd12692cda2bd02d9822" 	&& buildDeps=' 		ca-certificates 		curl 		make 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/local/src/elixir 	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz 	&& rm elixir-src.tar.gz 	&& cd /usr/local/src/elixir 	&& make install clean 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 12:43:18 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e01e408c3dbfc699176fb9c807707cdde9f3f2ca22cc6f7d4eb67123770c7`  
		Last Modified: Sat, 26 Jan 2019 13:10:55 GMT  
		Size: 60.3 MB (60260802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bf25a4c02ccfc051ed96ff81c6221008d97656696227953b2c076a96ca430b`  
		Last Modified: Fri, 01 Feb 2019 12:45:36 GMT  
		Size: 6.7 MB (6714748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
