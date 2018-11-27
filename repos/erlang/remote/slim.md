## `erlang:slim`

```console
$ docker pull erlang@sha256:3334a1bc191841a3f6f7e504dad0e8deea42188c6fca8be894a65a1a2285a596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `erlang:slim` - linux; amd64

```console
$ docker pull erlang@sha256:f7abdd8f9ef2d760b3f8b367649c0cc221ec4bcaa6234218264b2f1143f8ad8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106791919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90799a3d7f35d44f73e43dab5fa79bb182f3a696937f1e8f859d6854d5e31053`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 00:32:57 GMT
ENV OTP_VERSION=21.1.3
# Tue, 27 Nov 2018 00:42:23 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="9a447e1debed355ff78f5d502dc8259139d5aed2362037e7cca9dc9919245eca" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.1 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:42:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c0966bc09904b6f4329dcdc5e1547567dcbdec99c0fcf7647dfaf36f8efb`  
		Last Modified: Tue, 27 Nov 2018 01:36:23 GMT  
		Size: 61.5 MB (61471662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
