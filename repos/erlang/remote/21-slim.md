## `erlang:21-slim`

```console
$ docker pull erlang@sha256:82ffc11946425d59868a934e9b80f78b5db33a8a8513813c764d54d49d8a9745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `erlang:21-slim` - linux; amd64

```console
$ docker pull erlang@sha256:6d94dc69551eb9d860390fa04eeeb302dbc20b03c638278a43c2968687cd4155
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107381237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd40019a6a948bc3bf451f9f776c6a0e9a1efdf3b81e169efcc8b133ccabacd`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Wed, 13 Mar 2019 22:33:03 GMT
ENV OTP_VERSION=21.3
# Wed, 13 Mar 2019 22:43:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="64a6eea6c1dc2353ad80e29ef57f6ec4192c91478ac2b854d0417b6b2bf4d9bf" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 13 Mar 2019 22:43:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de264622273af174d9140dd5a3b89a1f4d06eb7edfd22a6ec2ec44a71389e58`  
		Last Modified: Wed, 13 Mar 2019 22:55:24 GMT  
		Size: 62.0 MB (62038709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
