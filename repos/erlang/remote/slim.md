## `erlang:slim`

```console
$ docker pull erlang@sha256:c1d56563c2240ab9cfd882fbef13433df0d1d2443e7fc15f41f414c36c9614e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `erlang:slim` - linux; amd64

```console
$ docker pull erlang@sha256:22dbd64149e95a0b7bf60011ea6459a5df8f0c22ccd6a3bc83b4ad9877933b14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106642079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38677c84bd6f79d2971ac57472ffdb0f104602127c9314670a7cd28af25b5037`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Fri, 13 Jul 2018 19:28:24 GMT
ENV OTP_VERSION=21.0.3
# Fri, 13 Jul 2018 19:34:32 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="81ed829f829d53ce7dd7e3808eb3162ef672d52bd3ebc1ad1b6c6dafc06cc324" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Fri, 13 Jul 2018 19:34:33 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d951e3e4f52e0979092838b0cbc3ddca997fff1021020b9e78739b6e08e9c12`  
		Last Modified: Fri, 13 Jul 2018 19:43:15 GMT  
		Size: 61.3 MB (61322855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
