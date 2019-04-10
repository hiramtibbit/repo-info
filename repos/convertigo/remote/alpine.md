## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:82b758d0297c95e92daa6b1daf8dd7302cd962ca5c9763538666ffec5b503856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:457f95b6550a95a198338c075a7d11351abe00a415d93b804d40b567a00a17c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201849384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09890767cc450969869b61c8be5c36bb694cbb5a90d71b905d0cbc4c885ff84b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:35:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 03:35:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:35:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 03:35:17 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 03:35:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 03:35:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 03:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 Apr 2019 03:35:18 GMT
ENV TOMCAT_MAJOR=7
# Wed, 10 Apr 2019 03:35:18 GMT
ENV TOMCAT_VERSION=7.0.93
# Wed, 10 Apr 2019 03:35:18 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Wed, 10 Apr 2019 03:35:18 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Wed, 10 Apr 2019 03:35:18 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Wed, 10 Apr 2019 03:35:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 10 Apr 2019 03:35:49 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 10 Apr 2019 03:35:49 GMT
EXPOSE 8080
# Wed, 10 Apr 2019 03:35:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 10 Apr 2019 03:54:06 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 10 Apr 2019 03:54:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 03:54:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 03:54:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 03:54:08 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 10 Apr 2019 03:54:08 GMT
ENV GOSU_VERSION=1.11
# Wed, 10 Apr 2019 03:54:09 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 10 Apr 2019 03:54:09 GMT
ENV TINI_VERSION=0.18.0
# Wed, 10 Apr 2019 03:54:09 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 10 Apr 2019 03:54:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 10 Apr 2019 03:54:13 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 10 Apr 2019 03:54:14 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 10 Apr 2019 03:54:14 GMT
ENV CONVERTIGO_VERSION=7.5.6
# Wed, 10 Apr 2019 03:54:14 GMT
ENV CONVERTIGO_REVISION=45045
# Wed, 10 Apr 2019 03:54:14 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.6/convertigo-7.5.6-v45045-linux32.war
# Wed, 10 Apr 2019 03:54:14 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 10 Apr 2019 03:54:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 10 Apr 2019 03:54:24 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Wed, 10 Apr 2019 03:54:24 GMT
COPY file:9ea3d9c4c79ca35410cb6c5333994bfe9c216183a2d97df89a5c1cb8adf6711a in / 
# Wed, 10 Apr 2019 03:54:24 GMT
WORKDIR /workspace
# Wed, 10 Apr 2019 03:54:24 GMT
VOLUME [/workspace]
# Wed, 10 Apr 2019 03:54:25 GMT
EXPOSE 28080
# Wed, 10 Apr 2019 03:54:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 03:54:25 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae272eb2814b212db0ef2f5b8db4be474597598efb779c8c1c4073d507939bc6`  
		Last Modified: Wed, 10 Apr 2019 01:57:42 GMT  
		Size: 54.9 MB (54918805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894f74659b198759b0a0635e6462f01d55d9d2111b10b663d762aacab7af3e9a`  
		Last Modified: Wed, 10 Apr 2019 03:37:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a795979bbb994912cd0aa9b55b5ad303293c91012939b22cae3094d20b816b`  
		Last Modified: Wed, 10 Apr 2019 03:37:37 GMT  
		Size: 12.3 MB (12333733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80db52d7c1c3cb2c490a0acfe85aced899612a894168112d2644045353be3823`  
		Last Modified: Wed, 10 Apr 2019 03:37:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6955d6e3777974e93e61b08172b80da47fb804976978240cc7f7951a7c138d45`  
		Last Modified: Wed, 10 Apr 2019 03:55:00 GMT  
		Size: 6.4 MB (6350041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee12649ecf73aef7fad9a9c0005cf3e4198012d58071df849f6039f8cdfeb3f9`  
		Last Modified: Wed, 10 Apr 2019 03:54:59 GMT  
		Size: 1.4 MB (1379918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52f66668bee4dca00d5384ab422edaef87732fb4405d6999b2da9c4ef97a9e`  
		Last Modified: Wed, 10 Apr 2019 03:54:57 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266ed8140e4aa5b9a1368d2a283d96bb22a1d3653f58b902d5d877905a5393b7`  
		Last Modified: Wed, 10 Apr 2019 03:54:57 GMT  
		Size: 25.9 KB (25924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c6075c0d986dc113910e79a997bd1b693b9608648549ce579c7a4739978258`  
		Last Modified: Wed, 10 Apr 2019 03:55:07 GMT  
		Size: 124.1 MB (124080607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c13b29dd3e29368de239778eb1988357250c05aaf3ce61cd6f9a61ca9448ff1`  
		Last Modified: Wed, 10 Apr 2019 03:54:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00436df652fefcd8667e9a95d3babef8a9674cb32fbc071b708f5619b5c2503`  
		Last Modified: Wed, 10 Apr 2019 03:54:57 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:e66b14138aacd20470fc4c672fd93ecb7e1b660241d1df22a97255cd0e0af388
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198421166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6bf5e90b0019a28b7c1bb33014f038e00512c81fa744d5fed27e0f97e08f9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 08:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 08:16:14 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 08:16:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:48:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 09:48:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 09:48:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 09:48:45 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 09:48:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 09:48:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 09:48:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 Apr 2019 09:48:47 GMT
ENV TOMCAT_MAJOR=7
# Wed, 10 Apr 2019 09:48:47 GMT
ENV TOMCAT_VERSION=7.0.93
# Wed, 10 Apr 2019 09:48:47 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Wed, 10 Apr 2019 09:48:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Wed, 10 Apr 2019 09:48:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Wed, 10 Apr 2019 09:49:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 10 Apr 2019 09:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 10 Apr 2019 09:49:11 GMT
EXPOSE 8080
# Wed, 10 Apr 2019 09:49:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 10 Apr 2019 10:28:13 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 10 Apr 2019 10:28:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 10:28:15 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 10:28:16 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 10:28:19 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 10 Apr 2019 10:28:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 10 Apr 2019 10:28:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 10 Apr 2019 10:28:20 GMT
ENV TINI_VERSION=0.18.0
# Wed, 10 Apr 2019 10:28:21 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 10 Apr 2019 10:28:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 10 Apr 2019 10:28:27 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 10 Apr 2019 10:28:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 10 Apr 2019 10:28:29 GMT
ENV CONVERTIGO_VERSION=7.5.6
# Wed, 10 Apr 2019 10:28:30 GMT
ENV CONVERTIGO_REVISION=45045
# Wed, 10 Apr 2019 10:28:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.6/convertigo-7.5.6-v45045-linux32.war
# Wed, 10 Apr 2019 10:28:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 10 Apr 2019 10:29:46 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 10 Apr 2019 10:29:46 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Wed, 10 Apr 2019 10:29:47 GMT
COPY file:9ea3d9c4c79ca35410cb6c5333994bfe9c216183a2d97df89a5c1cb8adf6711a in / 
# Wed, 10 Apr 2019 10:29:47 GMT
WORKDIR /workspace
# Wed, 10 Apr 2019 10:29:47 GMT
VOLUME [/workspace]
# Wed, 10 Apr 2019 10:29:48 GMT
EXPOSE 28080
# Wed, 10 Apr 2019 10:29:48 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:29:48 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e44c03e5dbccf9684eecd73adda46344a7ef33a1ef56568391eb8d1bb5766d4`  
		Last Modified: Wed, 10 Apr 2019 08:18:01 GMT  
		Size: 52.4 MB (52387331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1532bbc625ec59e5bd5ca15c1a74233d3c4611b7ec26b4df873e9db8809f92db`  
		Last Modified: Wed, 10 Apr 2019 09:51:10 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759e59775a01b3faaecdd707b510d56603ed671a3879ca14d25b09e99551ac31`  
		Last Modified: Wed, 10 Apr 2019 09:51:13 GMT  
		Size: 12.2 MB (12168820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47add42498c87b457c7ade64089e14ff8d9166cb8c43b74878bda3a706782e55`  
		Last Modified: Wed, 10 Apr 2019 09:51:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e45963ab8fd194610a40c56682235242d6eaa765a3d65ffbc25dfbac221d42`  
		Last Modified: Wed, 10 Apr 2019 10:31:20 GMT  
		Size: 6.0 MB (6018185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be21e910b49b0e91f74da65e11cc631a83e8d69feee17cc38b38c99ebc0cd19`  
		Last Modified: Wed, 10 Apr 2019 10:31:19 GMT  
		Size: 1.2 MB (1193349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f915b6cd5a5c8be04586d3c7fd6b77cfdb4e3d50180302a3a0ff3d8130363f`  
		Last Modified: Wed, 10 Apr 2019 10:31:17 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab39336bcfb378723893ee815c75be021dee3f6e74af90d3435c9355e817cb6f`  
		Last Modified: Wed, 10 Apr 2019 10:31:17 GMT  
		Size: 25.9 KB (25926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdb32e92f614a1a1d736362659e592cd49e42b81247d0c8d697c129d38c62a`  
		Last Modified: Wed, 10 Apr 2019 10:31:36 GMT  
		Size: 124.1 MB (124080650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bca116561a3a3926b5f88475f457af9e92aaaaee0878ff5e105d8f344f2a0c`  
		Last Modified: Wed, 10 Apr 2019 10:31:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1981114640528d2de8a51bc17a7879043e86b4f1353520faab274bb6e4a9ede`  
		Last Modified: Wed, 10 Apr 2019 10:31:17 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:377c245de88005ac633e1e209492abf58c6847f7118542a3985f2c3ba7332451
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201597980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e396417de6f18863baef1ab6ceaa557ed3529821217cbaa22dd183352d74dbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 13:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 13:50:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 13:50:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 13:50:33 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 13:50:35 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 13:50:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 16:23:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 16:23:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 16:23:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 16:23:23 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 16:23:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 16:23:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 16:23:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 Apr 2019 16:23:26 GMT
ENV TOMCAT_MAJOR=7
# Wed, 10 Apr 2019 16:23:26 GMT
ENV TOMCAT_VERSION=7.0.93
# Wed, 10 Apr 2019 16:23:27 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Wed, 10 Apr 2019 16:23:28 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Wed, 10 Apr 2019 16:23:28 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Wed, 10 Apr 2019 16:23:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 10 Apr 2019 16:23:58 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 10 Apr 2019 16:23:58 GMT
EXPOSE 8080
# Wed, 10 Apr 2019 16:23:59 GMT
CMD ["catalina.sh" "run"]
# Wed, 10 Apr 2019 16:44:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 10 Apr 2019 16:44:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 16:44:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 16:44:29 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 16:44:32 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 10 Apr 2019 16:44:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 10 Apr 2019 16:44:33 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 10 Apr 2019 16:44:34 GMT
ENV TINI_VERSION=0.18.0
# Wed, 10 Apr 2019 16:44:34 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 10 Apr 2019 16:44:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 10 Apr 2019 16:44:44 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 10 Apr 2019 16:44:46 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 10 Apr 2019 16:44:46 GMT
ENV CONVERTIGO_VERSION=7.5.6
# Wed, 10 Apr 2019 16:44:47 GMT
ENV CONVERTIGO_REVISION=45045
# Wed, 10 Apr 2019 16:44:47 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.6/convertigo-7.5.6-v45045-linux32.war
# Wed, 10 Apr 2019 16:44:48 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 10 Apr 2019 16:45:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 10 Apr 2019 16:45:28 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Wed, 10 Apr 2019 16:45:29 GMT
COPY file:9ea3d9c4c79ca35410cb6c5333994bfe9c216183a2d97df89a5c1cb8adf6711a in / 
# Wed, 10 Apr 2019 16:45:29 GMT
WORKDIR /workspace
# Wed, 10 Apr 2019 16:45:30 GMT
VOLUME [/workspace]
# Wed, 10 Apr 2019 16:45:31 GMT
EXPOSE 28080
# Wed, 10 Apr 2019 16:45:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 16:45:32 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262af2c613fda9d21034fdf7bbdb56296fdd19b65bdbb02d6795e631a674fa42`  
		Last Modified: Wed, 10 Apr 2019 13:54:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78228c716bb6c3a10bb270a49d539dd97f566d1096b0be9c36640eb8c5a1436`  
		Last Modified: Wed, 10 Apr 2019 13:56:24 GMT  
		Size: 54.9 MB (54929226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe42bb0c207aeaf01cca9c4fc8ce32174c3c2a66b2677cddc60d0280996b0c46`  
		Last Modified: Wed, 10 Apr 2019 16:27:23 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5756b89611471dc7c408759778591fea492f526be3e9208984115befd036db6`  
		Last Modified: Wed, 10 Apr 2019 16:27:27 GMT  
		Size: 12.3 MB (12332559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e514b2cdc18eb22ab7305c9c6a7720a0449b3b820d5abf74dc23eed2677f454c`  
		Last Modified: Wed, 10 Apr 2019 16:27:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dbac543e1132f38a4f2ee67a9c7cace1205bc01a221251475c3c78be70b07d`  
		Last Modified: Wed, 10 Apr 2019 16:47:05 GMT  
		Size: 6.3 MB (6319843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a2077e651b3fc4a5d80bad287f7d525c626ad99f8b1f7a9e68973bc81ccb5d`  
		Last Modified: Wed, 10 Apr 2019 16:47:04 GMT  
		Size: 1.2 MB (1217673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43011ff4f1e6d49061d528c0dd42cc5fd6dbc84674068432469254fa4d9af3b0`  
		Last Modified: Wed, 10 Apr 2019 16:47:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c585196dda39b9c019bbc5cbc82bd6bea833cefca00832dd0bd9bbd112732e`  
		Last Modified: Wed, 10 Apr 2019 16:47:01 GMT  
		Size: 25.9 KB (25928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6d8f7a395df3a2463976fa47e071698018291160c121eeeaddf4ca198358bb`  
		Last Modified: Wed, 10 Apr 2019 16:48:26 GMT  
		Size: 124.1 MB (124080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bf659f88aa4a5ccbaa4d05af7df04bd55d8fd4034666db548d0d3a106641a9`  
		Last Modified: Wed, 10 Apr 2019 16:47:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0139fb4eac81821d427a8a66b60bea52f0b574de553c714e4a8a1335ed2312`  
		Last Modified: Wed, 10 Apr 2019 16:47:01 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:1aaf3de17acb6de3d2477175c712b308d475233462b00655fcd8588ec9370296
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202723912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbca164e6b694f68faa5d129aa7a1a848203e39bd9785c7b0ccc0bc6594b3f6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:45:36 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 14:45:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 14:45:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 16:19:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 16:19:11 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 16:19:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 16:19:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 16:19:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 16:19:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 Apr 2019 16:19:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 Apr 2019 16:19:13 GMT
ENV TOMCAT_MAJOR=7
# Wed, 10 Apr 2019 16:19:13 GMT
ENV TOMCAT_VERSION=7.0.93
# Wed, 10 Apr 2019 16:19:13 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Wed, 10 Apr 2019 16:19:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Wed, 10 Apr 2019 16:19:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Wed, 10 Apr 2019 16:19:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 10 Apr 2019 16:19:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 10 Apr 2019 16:19:32 GMT
EXPOSE 8080
# Wed, 10 Apr 2019 16:19:32 GMT
CMD ["catalina.sh" "run"]
# Wed, 10 Apr 2019 16:37:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 10 Apr 2019 16:37:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Apr 2019 16:37:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Apr 2019 16:37:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Apr 2019 16:37:13 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 10 Apr 2019 16:37:13 GMT
ENV GOSU_VERSION=1.11
# Wed, 10 Apr 2019 16:37:13 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 10 Apr 2019 16:37:14 GMT
ENV TINI_VERSION=0.18.0
# Wed, 10 Apr 2019 16:37:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 10 Apr 2019 16:37:17 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 10 Apr 2019 16:37:17 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 10 Apr 2019 16:37:18 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 10 Apr 2019 16:37:18 GMT
ENV CONVERTIGO_VERSION=7.5.6
# Wed, 10 Apr 2019 16:37:19 GMT
ENV CONVERTIGO_REVISION=45045
# Wed, 10 Apr 2019 16:37:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.6/convertigo-7.5.6-v45045-linux32.war
# Wed, 10 Apr 2019 16:37:19 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 10 Apr 2019 16:37:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 10 Apr 2019 16:37:29 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Wed, 10 Apr 2019 16:37:30 GMT
COPY file:9ea3d9c4c79ca35410cb6c5333994bfe9c216183a2d97df89a5c1cb8adf6711a in / 
# Wed, 10 Apr 2019 16:37:30 GMT
WORKDIR /workspace
# Wed, 10 Apr 2019 16:37:30 GMT
VOLUME [/workspace]
# Wed, 10 Apr 2019 16:37:30 GMT
EXPOSE 28080
# Wed, 10 Apr 2019 16:37:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 16:37:30 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507150e9707de9812071bca1e05b447035474af8f628f739782f28876ce11ea7`  
		Last Modified: Wed, 10 Apr 2019 14:47:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cacfa9d1e4f768a9b0bba473e2c0159bbed58683b20860d2f4e235d8818306f`  
		Last Modified: Wed, 10 Apr 2019 14:47:32 GMT  
		Size: 55.5 MB (55538743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d019820010f343b2147fa0a5bc2ba2beb3fbcfd7db5e4d00b15d211a38771f1`  
		Last Modified: Wed, 10 Apr 2019 16:21:19 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2849ca64eb7a78a8c8b4258f0eb378de2eff8c55fa3606ffe4bc0477b5ec17a7`  
		Last Modified: Wed, 10 Apr 2019 16:21:20 GMT  
		Size: 12.3 MB (12272584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935ac797fc514a70b890d6f562e8de409f9670f193c070e825b6472dea46876`  
		Last Modified: Wed, 10 Apr 2019 16:21:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e483cba7a8c0e8dc645c3d1daad4cff91d2aad627a62e8eec56aab8431090e74`  
		Last Modified: Wed, 10 Apr 2019 16:38:04 GMT  
		Size: 6.8 MB (6754637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07f188b1935bbf19a6dcf8548ecb5990645766c56b122574d9c7ed3f6d60f24`  
		Last Modified: Wed, 10 Apr 2019 16:38:03 GMT  
		Size: 1.3 MB (1295856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18283604f0bcb3c7bf7223157a320545a4a9d94458638974f8587606c2c37f`  
		Last Modified: Wed, 10 Apr 2019 16:38:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c745af2d86592160a9c03e19930590b9ef47d91e1d7038d86af46457ace52b79`  
		Last Modified: Wed, 10 Apr 2019 16:38:01 GMT  
		Size: 25.9 KB (25927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b562d6f47f1e859790c40ff312170b786fdcacbccc61b82b4e1b7281cb5c34ce`  
		Last Modified: Wed, 10 Apr 2019 16:38:13 GMT  
		Size: 124.1 MB (124080655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594cbe36d9832bab2d539300781e1009f850224ce4b7239b5b90c96ac0f46f8c`  
		Last Modified: Wed, 10 Apr 2019 16:38:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c62d3bb4db973d384a0072e85c6392eec095d4d454c02512629d2f479ed9cd`  
		Last Modified: Wed, 10 Apr 2019 16:38:01 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
