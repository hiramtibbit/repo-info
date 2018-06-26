## `erlang:20-alpine`

```console
$ docker pull erlang@sha256:20cc11cb677bda03f5af67136dd55d1d0172f57474abdd9171099f4358725a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `erlang:20-alpine` - linux; amd64

```console
$ docker pull erlang@sha256:5079994b92b4e898fa891dc1b9113c51d64554430f08fb251740f219d354e072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46657830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31497435414f6251cc085d8691c2ad529e40d5d5b37ee9430ee2ffeeb5d113ac`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 18:55:59 GMT
ENV OTP_VERSION=20.3.8.1
# Tue, 26 Jun 2018 19:01:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="014a44064d81ef9ce0a1f036e4fbf7402ca3f02b8c592e1aa446090953e338ca" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Tue, 26 Jun 2018 19:01:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abde8feffc16188e94b8dd80ac6c52c958d425c57ac70f089c1be1e81ec5554e`  
		Last Modified: Tue, 26 Jun 2018 19:09:33 GMT  
		Size: 44.6 MB (44592293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
