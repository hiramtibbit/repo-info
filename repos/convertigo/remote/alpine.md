## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:7bb340ba0130b28680b202e31db079d0d6f660a81699d5b5d89bf77d17313641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:cf4dca94ce01c274eee32f68bf06e6d57ceb9adfc1eb465b02a18001b5a56e64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201894578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40b9a472fe66d1863a3d57abdba68aaba0d787ecef0a012e04c4bbd081059dc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:11:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 24 Oct 2018 23:11:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 23:11:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 24 Oct 2018 23:11:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 24 Oct 2018 23:11:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 24 Oct 2018 23:11:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 24 Oct 2018 23:11:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 Oct 2018 23:11:40 GMT
ENV TOMCAT_MAJOR=7
# Wed, 24 Oct 2018 23:11:40 GMT
ENV TOMCAT_VERSION=7.0.91
# Wed, 24 Oct 2018 23:11:40 GMT
ENV TOMCAT_SHA512=8cce397deaefa6f8aa2a499142f2dba46ac53e14ef432805a7819fd8987ebc66b257829c1f596c95e4d9fd86cfd45d5eea0c2b7d63286f7b1e58dc3316b7936b
# Wed, 24 Oct 2018 23:11:40 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz
# Wed, 24 Oct 2018 23:11:40 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc
# Wed, 24 Oct 2018 23:11:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 24 Oct 2018 23:12:03 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 Oct 2018 23:12:11 GMT
EXPOSE 8080/tcp
# Wed, 24 Oct 2018 23:12:12 GMT
CMD ["catalina.sh" "run"]
# Thu, 25 Oct 2018 01:00:36 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 25 Oct 2018 01:00:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 25 Oct 2018 01:00:37 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 25 Oct 2018 01:00:37 GMT
WORKDIR /usr/local/tomcat
# Thu, 25 Oct 2018 01:00:38 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 25 Oct 2018 01:00:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 01:00:39 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 01:00:39 GMT
ENV TINI_VERSION=0.17.0
# Thu, 25 Oct 2018 01:00:39 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 25 Oct 2018 01:00:43 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 25 Oct 2018 01:00:44 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 25 Oct 2018 01:00:45 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 25 Oct 2018 01:00:45 GMT
ENV CONVERTIGO_VERSION=7.5.3
# Thu, 25 Oct 2018 01:00:45 GMT
ENV CONVERTIGO_REVISION=44890
# Thu, 25 Oct 2018 01:00:45 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.3/convertigo-7.5.3-v44890-linux32.war
# Thu, 25 Oct 2018 01:00:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 25 Oct 2018 01:01:05 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 25 Oct 2018 01:01:05 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Thu, 25 Oct 2018 01:01:05 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Thu, 25 Oct 2018 01:01:06 GMT
WORKDIR /workspace
# Thu, 25 Oct 2018 01:01:06 GMT
VOLUME [/workspace]
# Thu, 25 Oct 2018 01:01:06 GMT
EXPOSE 28080/tcp
# Thu, 25 Oct 2018 01:01:07 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:01:07 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05d92015b09501c50e3d57d58fc9778ab2465792e76b74db220b5341ffee69c`  
		Last Modified: Wed, 24 Oct 2018 23:20:52 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5333028f1424471db70c904078024f154c33f494e263965e26df14f59705e1`  
		Last Modified: Wed, 24 Oct 2018 23:20:55 GMT  
		Size: 13.9 MB (13919958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ec1aaecd597e2f690b2e1d7071d41ade696009f05820c09c970fe3a754f6a4`  
		Last Modified: Wed, 24 Oct 2018 23:20:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be391c2f5ea193e79e8aea008296a9c0771f9327cdafff31984d0480eca58136`  
		Last Modified: Thu, 25 Oct 2018 01:02:00 GMT  
		Size: 6.1 MB (6110330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a44fd379c061fb0dc3f95d42eba0907e6a96275d30fada7842346ab29467e01`  
		Last Modified: Thu, 25 Oct 2018 01:01:59 GMT  
		Size: 976.7 KB (976715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8b8eb0816b51c8b814e48b6750a8b2aa44a2183dbf645a44ffd627e99b3ea8`  
		Last Modified: Thu, 25 Oct 2018 01:01:57 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939671cbc90c46ec3417f6337db66570e5300b6e1b20bc0c0b1ea64c3a43382c`  
		Last Modified: Thu, 25 Oct 2018 01:01:58 GMT  
		Size: 25.9 KB (25917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630cc2bbdf7f0fcbbf819bc97738144346c25b27e9ae1903c5216ed37c0f7dfb`  
		Last Modified: Thu, 25 Oct 2018 01:02:08 GMT  
		Size: 123.8 MB (123821740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e239e7978ea44d9a62839dfe6d13f6e69596bc19ece49da74996d3d2bce4daa5`  
		Last Modified: Thu, 25 Oct 2018 01:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620894d03b6d9d2f74ef6135085dc8f5f1e4be6ad1600916ff218452b4394d85`  
		Last Modified: Thu, 25 Oct 2018 01:01:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:6ea2b9fa765c0b823ddb383fe4ff2917ca4794225b9a2d767f425e575759453c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198242827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c791302ffb93b20ead3b8f9a80c3ea71bdaa2dc16f64d5903c8e12870c61a502`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:28:56 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:28:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 08:29:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 08:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 08:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 09:07:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 12 Sep 2018 09:07:38 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 09:07:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 12 Sep 2018 09:07:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 12 Sep 2018 09:07:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 12 Sep 2018 09:07:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 12 Sep 2018 09:07:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 12 Sep 2018 09:07:40 GMT
ENV TOMCAT_MAJOR=7
# Sat, 22 Sep 2018 07:52:21 GMT
ENV TOMCAT_VERSION=7.0.91
# Sat, 22 Sep 2018 07:52:21 GMT
ENV TOMCAT_SHA512=8cce397deaefa6f8aa2a499142f2dba46ac53e14ef432805a7819fd8987ebc66b257829c1f596c95e4d9fd86cfd45d5eea0c2b7d63286f7b1e58dc3316b7936b
# Sat, 22 Sep 2018 07:52:22 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz
# Sat, 22 Sep 2018 07:52:22 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc
# Sat, 22 Sep 2018 07:52:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 22 Sep 2018 07:52:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 22 Sep 2018 07:52:48 GMT
EXPOSE 8080/tcp
# Sat, 22 Sep 2018 07:52:49 GMT
CMD ["catalina.sh" "run"]
# Sat, 22 Sep 2018 08:09:29 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 22 Sep 2018 08:09:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 22 Sep 2018 08:09:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 22 Sep 2018 08:09:30 GMT
WORKDIR /usr/local/tomcat
# Sat, 22 Sep 2018 08:09:32 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sat, 22 Sep 2018 08:09:33 GMT
ENV GOSU_VERSION=1.10
# Sat, 22 Sep 2018 08:09:33 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 22 Sep 2018 08:09:33 GMT
ENV TINI_VERSION=0.17.0
# Sat, 22 Sep 2018 08:09:34 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 22 Sep 2018 08:10:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 22 Sep 2018 08:10:12 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 22 Sep 2018 08:10:13 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 22 Sep 2018 08:10:14 GMT
ENV CONVERTIGO_VERSION=7.5.3
# Sat, 22 Sep 2018 08:10:14 GMT
ENV CONVERTIGO_REVISION=44890
# Sat, 22 Sep 2018 08:10:14 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.3/convertigo-7.5.3-v44890-linux32.war
# Sat, 22 Sep 2018 08:10:15 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 22 Sep 2018 08:11:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 22 Sep 2018 08:11:28 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 22 Sep 2018 08:11:29 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 22 Sep 2018 08:11:29 GMT
WORKDIR /workspace
# Sat, 22 Sep 2018 08:11:29 GMT
VOLUME [/workspace]
# Sat, 22 Sep 2018 08:11:30 GMT
EXPOSE 28080/tcp
# Sat, 22 Sep 2018 08:11:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:11:30 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5330a9c830688a5533553fc6f68b39796b550d1e9e2adec9da6321849c3091f`  
		Last Modified: Wed, 12 Sep 2018 08:30:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00747677db18ac2063a80d62c65eb527d42e50b3d18451ed46e66a4695c28ce1`  
		Last Modified: Wed, 12 Sep 2018 08:31:08 GMT  
		Size: 52.3 MB (52277680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4300dd5680ee70732eca0e65baacd104bfc6c479057d229141c5bf9a1b5c0a2`  
		Last Modified: Sat, 15 Sep 2018 10:10:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54d445f16583c748b4f6f7c8d5fa025c8c155003ce6ee8095c92cd830663468`  
		Last Modified: Sat, 22 Sep 2018 07:53:52 GMT  
		Size: 13.4 MB (13369570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9098f4d5bafbb76bc5c9f8e997e791ef05bfa03429530b75299c7dc1daa31a4`  
		Last Modified: Sat, 22 Sep 2018 07:53:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b2bd0822997e065a1f765774f2706eed206beca92fe59a4e41d30eb914cf1`  
		Last Modified: Sat, 22 Sep 2018 08:13:06 GMT  
		Size: 5.8 MB (5784120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a9b94a592a928d2f34b43338d882639ef78ba1752e009e949a6cc1fc2c27cf`  
		Last Modified: Sat, 22 Sep 2018 08:13:03 GMT  
		Size: 813.8 KB (813791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06178938a3f2deab1f2cc52872c748732716f9757912928f16d63a3dc23e140d`  
		Last Modified: Sat, 22 Sep 2018 08:13:03 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a78c185d2524bc2f4c51baf8bd270fe62b85be0ef8c7590d3191a312bfe05a4`  
		Last Modified: Sat, 22 Sep 2018 08:13:02 GMT  
		Size: 25.9 KB (25928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a964b27319dfbd1c581ef78572eb9ed408871330af1c6f10ffd9702f210dd4c6`  
		Last Modified: Sat, 22 Sep 2018 08:13:19 GMT  
		Size: 123.8 MB (123821659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f734c23044bc418de4017ed400be28ecad48989fd553c4db309cfc80369c820`  
		Last Modified: Sat, 22 Sep 2018 08:13:03 GMT  
		Size: 452.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d406762b19995df1ec373d7a16ad78733bbd3a92165e77f09ca718f9bbb250de`  
		Last Modified: Sat, 22 Sep 2018 08:13:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:badd039baea8c1b1905683ce46d323a0f4fd777869566d2226625256703e2d63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199156212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730cb07dc8d295a02882b7a634c683a79b05246bb696bab8387eb663eb895c98`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:31:14 GMT
ENV LANG=C.UTF-8
# Sat, 15 Sep 2018 10:31:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:32:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 15 Sep 2018 10:32:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 15 Sep 2018 10:32:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 15 Sep 2018 10:32:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 15 Sep 2018 10:32:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 15 Sep 2018 11:49:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 15 Sep 2018 11:49:27 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 15 Sep 2018 11:49:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 15 Sep 2018 11:49:31 GMT
WORKDIR /usr/local/tomcat
# Sat, 15 Sep 2018 11:49:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 15 Sep 2018 11:49:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 15 Sep 2018 11:49:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 15 Sep 2018 11:49:35 GMT
ENV TOMCAT_MAJOR=7
# Sat, 22 Sep 2018 09:17:09 GMT
ENV TOMCAT_VERSION=7.0.91
# Sat, 22 Sep 2018 09:17:10 GMT
ENV TOMCAT_SHA512=8cce397deaefa6f8aa2a499142f2dba46ac53e14ef432805a7819fd8987ebc66b257829c1f596c95e4d9fd86cfd45d5eea0c2b7d63286f7b1e58dc3316b7936b
# Sat, 22 Sep 2018 09:17:11 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz
# Sat, 22 Sep 2018 09:17:11 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc
# Sat, 22 Sep 2018 09:17:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 22 Sep 2018 09:17:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 22 Sep 2018 09:17:53 GMT
EXPOSE 8080/tcp
# Sat, 22 Sep 2018 09:17:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 22 Sep 2018 09:40:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 22 Sep 2018 09:40:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 22 Sep 2018 09:40:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 22 Sep 2018 09:40:52 GMT
WORKDIR /usr/local/tomcat
# Sat, 22 Sep 2018 09:40:56 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sat, 22 Sep 2018 09:40:57 GMT
ENV GOSU_VERSION=1.10
# Sat, 22 Sep 2018 09:40:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 22 Sep 2018 09:41:00 GMT
ENV TINI_VERSION=0.17.0
# Sat, 22 Sep 2018 09:41:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 22 Sep 2018 09:41:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 22 Sep 2018 09:41:15 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 22 Sep 2018 09:41:18 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 22 Sep 2018 09:41:20 GMT
ENV CONVERTIGO_VERSION=7.5.3
# Sat, 22 Sep 2018 09:41:21 GMT
ENV CONVERTIGO_REVISION=44890
# Sat, 22 Sep 2018 09:41:22 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.3/convertigo-7.5.3-v44890-linux32.war
# Sat, 22 Sep 2018 09:41:23 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 22 Sep 2018 09:42:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 22 Sep 2018 09:42:27 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 22 Sep 2018 09:42:28 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 22 Sep 2018 09:42:29 GMT
WORKDIR /workspace
# Sat, 22 Sep 2018 09:42:30 GMT
VOLUME [/workspace]
# Sat, 22 Sep 2018 09:42:31 GMT
EXPOSE 28080/tcp
# Sat, 22 Sep 2018 09:42:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 22 Sep 2018 09:42:33 GMT
CMD ["convertigo"]
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
	-	`sha256:a6f5ccd8840b9ed31daf1700ec6ed07458ba25d6734206c6c4c5910f09d8c0a6`  
		Last Modified: Sat, 15 Sep 2018 10:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05d430af100cf0140a25542c8239dff4d62ceffee301f20bad85a55e863e38a`  
		Last Modified: Sat, 15 Sep 2018 10:52:07 GMT  
		Size: 53.3 MB (53332573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d27c1fb3eb637af2eb4aa2c1b255094a83350abe21fcecfed018819690cea89`  
		Last Modified: Sat, 15 Sep 2018 13:07:15 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ccb1042ad39d84b6f90a32a54cc2cd93dcc4f2ea1866d8dcc3e595a6ff1dda`  
		Last Modified: Sat, 22 Sep 2018 09:22:00 GMT  
		Size: 13.5 MB (13451783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c967882517415bd566a4c08d34f1fb1cd60f6acdfc3dd6b9ef57cd5a6ac051f`  
		Last Modified: Sat, 22 Sep 2018 09:21:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd1748d252151bd6238fdb0c40d23f10cdf3fdef6d42ed31b7cca63ba080e53`  
		Last Modified: Sat, 22 Sep 2018 09:47:21 GMT  
		Size: 5.6 MB (5572826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b68270fc89b2f5c4cc463d5bc2b2906ce577e9b685c7c1f29a7767c8fff958`  
		Last Modified: Sat, 22 Sep 2018 09:47:18 GMT  
		Size: 848.2 KB (848174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffae771ae79322c30645877be3e92267cadabf59e73bf22ecaebd91d685f22`  
		Last Modified: Sat, 22 Sep 2018 09:47:15 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89aab7e4731f1d5ea68b7fda9d7563f4ce08c94e9676af57b2abc2e49eace09`  
		Last Modified: Sat, 22 Sep 2018 09:47:15 GMT  
		Size: 25.9 KB (25930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ce71d9bbc7ef600cdb7838f27d0fb15b6a8d489ae64827b9b4738696d4532f`  
		Last Modified: Sat, 22 Sep 2018 09:47:38 GMT  
		Size: 123.8 MB (123821648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c778f6181833e8e85e542c8e98e85a0ea8d39bb063b93a1abdd6485371a1543d`  
		Last Modified: Sat, 22 Sep 2018 09:47:15 GMT  
		Size: 451.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146fff8e93a52bc121730989767b1fe3fc5aca10f3fc5158df9e7459a463fe64`  
		Last Modified: Sat, 22 Sep 2018 09:47:15 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:1205375ce460984bfd8e7862702b14badeb19cc0d511bfc7e945b516a9b26569
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202623247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241542da56ccc3d85b7dd241c959f6d6b9a0a6adda63d63edcf5b70d02c28e1e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:26:37 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:26:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 12:26:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 12:26:58 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 18:25:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 12 Sep 2018 18:25:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 18:25:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 12 Sep 2018 18:25:45 GMT
WORKDIR /usr/local/tomcat
# Wed, 12 Sep 2018 18:25:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 12 Sep 2018 18:25:45 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 12 Sep 2018 18:25:45 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 12 Sep 2018 18:25:46 GMT
ENV TOMCAT_MAJOR=7
# Sat, 22 Sep 2018 11:05:59 GMT
ENV TOMCAT_VERSION=7.0.91
# Sat, 22 Sep 2018 11:06:00 GMT
ENV TOMCAT_SHA512=8cce397deaefa6f8aa2a499142f2dba46ac53e14ef432805a7819fd8987ebc66b257829c1f596c95e4d9fd86cfd45d5eea0c2b7d63286f7b1e58dc3316b7936b
# Sat, 22 Sep 2018 11:06:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz
# Sat, 22 Sep 2018 11:06:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz.asc
# Sat, 22 Sep 2018 11:06:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 22 Sep 2018 11:06:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 22 Sep 2018 11:06:19 GMT
EXPOSE 8080/tcp
# Sat, 22 Sep 2018 11:06:20 GMT
CMD ["catalina.sh" "run"]
# Sat, 22 Sep 2018 11:26:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 22 Sep 2018 11:26:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 22 Sep 2018 11:26:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 22 Sep 2018 11:26:45 GMT
WORKDIR /usr/local/tomcat
# Sat, 22 Sep 2018 11:26:47 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sat, 22 Sep 2018 11:26:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 22 Sep 2018 11:26:47 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 22 Sep 2018 11:26:47 GMT
ENV TINI_VERSION=0.17.0
# Sat, 22 Sep 2018 11:26:47 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 22 Sep 2018 11:26:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 22 Sep 2018 11:26:52 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 22 Sep 2018 11:26:53 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 22 Sep 2018 11:26:53 GMT
ENV CONVERTIGO_VERSION=7.5.3
# Sat, 22 Sep 2018 11:26:53 GMT
ENV CONVERTIGO_REVISION=44890
# Sat, 22 Sep 2018 11:26:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.3/convertigo-7.5.3-v44890-linux32.war
# Sat, 22 Sep 2018 11:26:54 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 22 Sep 2018 11:27:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 22 Sep 2018 11:27:12 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 22 Sep 2018 11:27:13 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 22 Sep 2018 11:27:13 GMT
WORKDIR /workspace
# Sat, 22 Sep 2018 11:27:13 GMT
VOLUME [/workspace]
# Sat, 22 Sep 2018 11:27:14 GMT
EXPOSE 28080/tcp
# Sat, 22 Sep 2018 11:27:14 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 22 Sep 2018 11:27:14 GMT
CMD ["convertigo"]
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
	-	`sha256:28e11b9507e2b27f5ba6cf1ca7a6129f7238ae95981ee1dce74b023e8fea1d68`  
		Last Modified: Wed, 12 Sep 2018 12:28:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0bc2c419c6200a29885c7ecf0fe777349af7e4e5fa7fd308ef38606f009fbb`  
		Last Modified: Wed, 12 Sep 2018 12:29:10 GMT  
		Size: 55.4 MB (55428216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907984aa710a12935f3f48af8eac6c431a978dfadfb71f84afe971cfcbe186ce`  
		Last Modified: Wed, 12 Sep 2018 18:31:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9103e93d7f41bf32f2c62d30f239f6baaa4dfd413d28db88f8fae0b5c0e0f257`  
		Last Modified: Sat, 22 Sep 2018 11:10:08 GMT  
		Size: 13.7 MB (13686765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1142b86065cc1469a28f26f7725753a7adc355abd4ff6293a981069b12562`  
		Last Modified: Sat, 22 Sep 2018 11:10:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011e0c519a7733ebc9d8bdd52264de698dfc7e7a64338750e052205d3dedebd`  
		Last Modified: Sat, 22 Sep 2018 11:29:11 GMT  
		Size: 6.5 MB (6481040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064859ccf69325fb8c861d87c36ceec86d574d24e3830cad667302772223186e`  
		Last Modified: Sat, 22 Sep 2018 11:29:06 GMT  
		Size: 904.6 KB (904648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830312673f4e92fe41fbb7ef9d058ea23a963140199b81d1f73a065ec41892dd`  
		Last Modified: Sat, 22 Sep 2018 11:29:05 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bca428f344d3e3d6ce8f0e07d237f47beba80f3e1af98b59b0c32809af2d723`  
		Last Modified: Sat, 22 Sep 2018 11:29:05 GMT  
		Size: 25.9 KB (25925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203aa0921777031d0e191e0f9e074ea631c1dec501666508248c1d31461e2b8d`  
		Last Modified: Sat, 22 Sep 2018 11:29:17 GMT  
		Size: 123.8 MB (123821679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb4617f676ebf5d9a9afdb1a9ec70ff644ce98aee92424779ba6c70dde26c`  
		Last Modified: Sat, 22 Sep 2018 11:29:05 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa43d7abd5628fa713c37daceef3a3a765690e5f4fabc47d81ec29b9ac0d0905`  
		Last Modified: Sat, 22 Sep 2018 11:29:06 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
