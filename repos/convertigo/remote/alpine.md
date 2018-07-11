## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:b85d26a4e782120d241cbb18e86a69cf0ea787d72ef677c28037f8167fcbb0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:6661a4e090375e4347c25e62af03c14be810d22ff8fde5ca860bd67170d85564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200151690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cd94d56a8f34735f96f5311addfa0d856b20b9f2a23bbad3488d3c322d23b3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 02:20:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 11 Jul 2018 02:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 02:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 11 Jul 2018 02:20:57 GMT
WORKDIR /usr/local/tomcat
# Wed, 11 Jul 2018 02:20:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 11 Jul 2018 02:20:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 11 Jul 2018 02:20:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 11 Jul 2018 02:20:58 GMT
ENV TOMCAT_MAJOR=7
# Wed, 11 Jul 2018 02:20:58 GMT
ENV TOMCAT_VERSION=7.0.90
# Wed, 11 Jul 2018 02:20:58 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Wed, 11 Jul 2018 02:20:58 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Wed, 11 Jul 2018 02:20:58 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 11 Jul 2018 02:21:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 11 Jul 2018 02:21:26 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 11 Jul 2018 02:21:26 GMT
EXPOSE 8080/tcp
# Wed, 11 Jul 2018 02:21:26 GMT
CMD ["catalina.sh" "run"]
# Wed, 11 Jul 2018 03:01:51 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 11 Jul 2018 03:01:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 11 Jul 2018 03:01:52 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 11 Jul 2018 03:01:52 GMT
WORKDIR /usr/local/tomcat
# Wed, 11 Jul 2018 03:01:54 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 11 Jul 2018 03:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Jul 2018 03:02:04 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 11 Jul 2018 03:02:04 GMT
ENV TINI_VERSION=0.17.0
# Wed, 11 Jul 2018 03:02:05 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 11 Jul 2018 03:02:14 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 11 Jul 2018 03:02:15 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 11 Jul 2018 03:02:16 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 11 Jul 2018 03:02:16 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Wed, 11 Jul 2018 03:02:16 GMT
ENV CONVERTIGO_REVISION=44730
# Wed, 11 Jul 2018 03:02:16 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Wed, 11 Jul 2018 03:02:17 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 11 Jul 2018 03:02:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 11 Jul 2018 03:02:39 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 11 Jul 2018 03:02:40 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 11 Jul 2018 03:02:40 GMT
WORKDIR /workspace
# Wed, 11 Jul 2018 03:02:40 GMT
VOLUME [/workspace]
# Wed, 11 Jul 2018 03:02:41 GMT
EXPOSE 28080/tcp
# Wed, 11 Jul 2018 03:02:41 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 11 Jul 2018 03:02:41 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019068f0374eccbcef43548c6d37bd4f412204e171fe7aaea0f269c31b59203`  
		Last Modified: Wed, 11 Jul 2018 02:28:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8061e02c1fd038819b1e77b15da46439003dbb477bca72870ebb263303c6d`  
		Last Modified: Wed, 11 Jul 2018 02:28:12 GMT  
		Size: 13.9 MB (13887550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ad896256d7f33636c3af4c55ec2d7bfdbdbbbabe7bb2c1d51d72a2406499cb`  
		Last Modified: Wed, 11 Jul 2018 02:28:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddf793a256bf709257b3046bcb858e93a680d8fe0915a395b6f3e1eabbe2286`  
		Last Modified: Wed, 11 Jul 2018 03:03:54 GMT  
		Size: 6.1 MB (6109084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d48d298751e682cc1d5398f7b32d89edf22c372cd9258d01794acfc2cccdbdf`  
		Last Modified: Wed, 11 Jul 2018 03:03:52 GMT  
		Size: 976.7 KB (976684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2946866d3ed7e161dec95ae1c437cb3681fbee36b55c592803650d90a07910a`  
		Last Modified: Wed, 11 Jul 2018 03:03:50 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934511aaa00ee73e35292fdcef5b9b7894639a9a3ba421b3d53bf1fceb255ebb`  
		Last Modified: Wed, 11 Jul 2018 03:03:49 GMT  
		Size: 25.9 KB (25908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e081e991bbad3749296d2a3b5671f4426725b1e8d2583c978c62c1494c655b0`  
		Last Modified: Wed, 11 Jul 2018 03:04:06 GMT  
		Size: 122.1 MB (122144256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c734134a03aad7f94da97932220e8f1f2bf05d37f736c5656c6686840a212f2a`  
		Last Modified: Wed, 11 Jul 2018 03:03:49 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122b754e3ca5a06faedd193d96b641856cafb2fe709e77642a2a6d01c6603b06`  
		Last Modified: Wed, 11 Jul 2018 03:03:49 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:aeb8cc6b7c6e9bfb41c9f0ea693c88a450665121f5342906d5b1218d13849cf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197449985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d0d24d50c4d75f45c42aec5af09561526f62f6f6fc55c07c87f578ca0c872f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:42:59 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 08:43:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 08:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 08:43:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 08:43:53 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 08:44:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 10:58:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 11 Jul 2018 10:58:04 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 10:58:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 11 Jul 2018 10:58:06 GMT
WORKDIR /usr/local/tomcat
# Wed, 11 Jul 2018 10:58:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 11 Jul 2018 10:58:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 11 Jul 2018 10:58:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 11 Jul 2018 10:58:09 GMT
ENV TOMCAT_MAJOR=7
# Wed, 11 Jul 2018 10:58:10 GMT
ENV TOMCAT_VERSION=7.0.90
# Wed, 11 Jul 2018 10:58:11 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Wed, 11 Jul 2018 10:58:11 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Wed, 11 Jul 2018 10:58:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 11 Jul 2018 10:58:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 11 Jul 2018 10:58:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 11 Jul 2018 10:58:42 GMT
EXPOSE 8080/tcp
# Wed, 11 Jul 2018 10:58:43 GMT
CMD ["catalina.sh" "run"]
# Wed, 11 Jul 2018 11:29:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 11 Jul 2018 11:29:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 11 Jul 2018 11:29:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 11 Jul 2018 11:29:14 GMT
WORKDIR /usr/local/tomcat
# Wed, 11 Jul 2018 11:29:17 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 11 Jul 2018 11:29:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Jul 2018 11:29:18 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 11 Jul 2018 11:29:19 GMT
ENV TINI_VERSION=0.17.0
# Wed, 11 Jul 2018 11:29:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 11 Jul 2018 11:29:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 11 Jul 2018 11:29:30 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 11 Jul 2018 11:29:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 11 Jul 2018 11:29:33 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Wed, 11 Jul 2018 11:29:34 GMT
ENV CONVERTIGO_REVISION=44730
# Wed, 11 Jul 2018 11:29:34 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Wed, 11 Jul 2018 11:29:35 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 11 Jul 2018 11:30:10 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 11 Jul 2018 11:30:11 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 11 Jul 2018 11:30:12 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 11 Jul 2018 11:30:12 GMT
WORKDIR /workspace
# Wed, 11 Jul 2018 11:30:13 GMT
VOLUME [/workspace]
# Wed, 11 Jul 2018 11:30:14 GMT
EXPOSE 28080/tcp
# Wed, 11 Jul 2018 11:30:15 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:30:16 GMT
CMD ["convertigo"]
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
	-	`sha256:db6021084a8eee491399113c29faf511efbb84b0299920f83c1bfbca669a70ee`  
		Last Modified: Wed, 11 Jul 2018 08:49:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951cbfcd7f820b48a4b2a083946b4b1344b8a0c9322f8eb9471879df81b63d3d`  
		Last Modified: Wed, 11 Jul 2018 08:52:32 GMT  
		Size: 53.3 MB (53332872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d448927357ed949352f462dd4d395ecd6629926359ff19787b512cccedc00bf3`  
		Last Modified: Wed, 11 Jul 2018 11:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06652fc22f1dfc304f37468f1aa7f05f3b1b428dc29389565638c1aa8c2fd17f`  
		Last Modified: Wed, 11 Jul 2018 11:08:41 GMT  
		Size: 13.4 MB (13424340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7496d7ca9c2a039ee3b12e73d71ffd6b404eb00bd1a5ff4eefa309aa119ea09`  
		Last Modified: Wed, 11 Jul 2018 11:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c5faa011d9023c4add2aa872b5121e54a6594bb61143a5b46cb9167b1e3e8`  
		Last Modified: Wed, 11 Jul 2018 11:32:02 GMT  
		Size: 5.6 MB (5571514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1e15e1f6f7f3598274069c9946980a30134931e67d9bf795ab21ac203a31c3`  
		Last Modified: Wed, 11 Jul 2018 11:32:00 GMT  
		Size: 848.1 KB (848071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ab96e85c4befaae79ce1bd43f0ac582ade90a9cc058ae3af63295f00de1d13`  
		Last Modified: Wed, 11 Jul 2018 11:31:57 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419fcf218c0b993729d1f7abeeacab4aa6fc05616d4da1dfaa7c41753576f4f6`  
		Last Modified: Wed, 11 Jul 2018 11:31:58 GMT  
		Size: 25.9 KB (25908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b549e0310478675b0c3a96d7855037cd36693daf6fa4dbe2fd0daea77c752b69`  
		Last Modified: Wed, 11 Jul 2018 11:32:17 GMT  
		Size: 122.1 MB (122144254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b11d8feb09e46aac830027f1be7490593a5d23298a66447b51bcb3c864ddd2`  
		Last Modified: Wed, 11 Jul 2018 11:31:58 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218011894a40cbd6234dd5d863c2cfd7362833312f90dc5ddd99a36aedf0db6d`  
		Last Modified: Wed, 11 Jul 2018 11:31:57 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:1db8e4a1a8f3d8584bfd60377e52dd0eb6571d68b470a3b9bcfb839759c7501a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199760295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2f70f58f705aa09ef7b059f9808469ce1d2fd9465cc50bae2451a31f8e4280`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 10:39:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Jun 2018 10:39:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 10:39:16 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 10:39:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 10:39:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 11:03:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 16 Jun 2018 11:03:50 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 11:03:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 16 Jun 2018 11:03:51 GMT
WORKDIR /usr/local/tomcat
# Sat, 16 Jun 2018 11:03:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 16 Jun 2018 11:03:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 16 Jun 2018 11:03:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 16 Jun 2018 11:03:52 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 11:14:41 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 11:14:42 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 11:14:42 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 11:14:42 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Sat, 07 Jul 2018 11:15:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 07 Jul 2018 11:15:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 07 Jul 2018 11:15:18 GMT
EXPOSE 8080/tcp
# Sat, 07 Jul 2018 11:15:18 GMT
CMD ["catalina.sh" "run"]
# Sat, 07 Jul 2018 11:58:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 07 Jul 2018 11:58:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 07 Jul 2018 11:58:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 07 Jul 2018 11:58:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 07 Jul 2018 11:58:29 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sat, 07 Jul 2018 11:58:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 07 Jul 2018 11:58:29 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 07 Jul 2018 11:58:29 GMT
ENV TINI_VERSION=0.17.0
# Sat, 07 Jul 2018 11:58:29 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 07 Jul 2018 11:58:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 07 Jul 2018 11:58:38 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 07 Jul 2018 11:58:39 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 07 Jul 2018 11:58:39 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Sat, 07 Jul 2018 11:58:40 GMT
ENV CONVERTIGO_REVISION=44730
# Sat, 07 Jul 2018 11:58:40 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Sat, 07 Jul 2018 11:58:40 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 07 Jul 2018 11:59:07 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 07 Jul 2018 11:59:08 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 07 Jul 2018 11:59:08 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 07 Jul 2018 11:59:08 GMT
WORKDIR /workspace
# Sat, 07 Jul 2018 11:59:09 GMT
VOLUME [/workspace]
# Sat, 07 Jul 2018 11:59:09 GMT
EXPOSE 28080/tcp
# Sat, 07 Jul 2018 11:59:09 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:59:09 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730d81ac3b103a2b66d5e57cd18c6079b49738517c93f83aa9bcc442da1f2b21`  
		Last Modified: Fri, 01 Jun 2018 10:42:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a89647af0792c4a80b1bffa6e0dc88b0db252e4f9eae46a0fbeeba7ab35725e`  
		Last Modified: Sat, 16 Jun 2018 10:42:34 GMT  
		Size: 55.2 MB (55195235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5241a4f4bfe9c7ce50309c7c34ed471fa88dc6e9b1d0b674082e6a59d4df0f`  
		Last Modified: Sat, 16 Jun 2018 11:07:35 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d660a847cc841172f529e93ab420540b639b50fe25b2d71dbfbe581765557`  
		Last Modified: Sat, 07 Jul 2018 11:36:35 GMT  
		Size: 12.9 MB (12875144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b9a34834785fc7faa4db1329e3a4268367cc36ebc0e32471b56332ee3393a2`  
		Last Modified: Sat, 07 Jul 2018 11:36:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199ff0af197519fedd595bee9afae29948086e3518df2d338e5dd3f44c4ded49`  
		Last Modified: Sat, 07 Jul 2018 12:02:12 GMT  
		Size: 6.5 MB (6484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0991ffc5b90339fc17ac19feeb3cd981e7f49ac3157fa8548c5000965e3fa18`  
		Last Modified: Sat, 07 Jul 2018 12:02:09 GMT  
		Size: 905.3 KB (905296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03478d482fcd5476b89fe2b94aa5a212761c69bb8b8f70566347cf2a5398c2f3`  
		Last Modified: Sat, 07 Jul 2018 12:02:06 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e4f8f89688b0a54501b74a7f5e25d0f3b52d57f1b73e45b982c96f6b7a653b`  
		Last Modified: Sat, 07 Jul 2018 12:02:06 GMT  
		Size: 25.9 KB (25912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d26c0434b8ca7354a43f5cad24a9dadb0a777d2e614176cf3bf808890a2653b`  
		Last Modified: Sat, 07 Jul 2018 12:02:24 GMT  
		Size: 122.1 MB (122144221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8c78d5c842c900d5834059ab61cd54700259b590e05a75e1c7e6319ffafe9a`  
		Last Modified: Sat, 07 Jul 2018 12:02:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b245b21408d52a4cb13b740ba820dde7b483285482f907a06b3d0a11d24dc305`  
		Last Modified: Sat, 07 Jul 2018 12:02:06 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
