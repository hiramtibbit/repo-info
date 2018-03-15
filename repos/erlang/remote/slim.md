## `erlang:slim`

```console
$ docker pull erlang@sha256:0f7467f8fd22eed1ebf55efcd529c5ff2d753dd5c378f2804032f2bfd99ef4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:9b53c4d56bfb81ad948bc9f481220ac6ed391a683e4d41b3d5423a0235ec3bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114903076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37bfadfd3d54b54d15779ac0addcc05e68a8b3de9711ee8583789489b6faff7`
-	Default Command: `["erl"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 19:00:20 GMT
ENV OTP_VERSION=20.3
# Thu, 15 Mar 2018 19:04:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="e73a9b2c2a16f3739aa642b2a8698c56939e9b0d3664bb92bd9fc51a7308d73e" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 15 Mar 2018 19:04:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d774f3c57f91e20e7ba520c6bd0b4ce950540775810cf251d2823cd4a3014a47`  
		Last Modified: Thu, 15 Mar 2018 19:10:23 GMT  
		Size: 62.1 MB (62107604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
