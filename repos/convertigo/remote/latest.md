## `convertigo:latest`

```console
$ docker pull convertigo@sha256:9ea303d653af3ace77321a90198b777c317e45796dfce83382f016d39130ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:0288dfbf124c040e0dd75a7177662a6b76fd0b8cbb1b80d25ac74dd275de5284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.9 MB (316862348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eac5b10934d990e1286b6a20aac4b4d6a62f84bbfd3602cdd27b3bf5ac5d9d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:03:43 GMT
ENV TOMCAT_MAJOR=7
# Tue, 17 Jul 2018 18:03:43 GMT
ENV TOMCAT_VERSION=7.0.90
# Tue, 17 Jul 2018 18:03:43 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Tue, 17 Jul 2018 18:03:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Tue, 17 Jul 2018 18:03:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Tue, 17 Jul 2018 18:04:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:04:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:04:36 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:04:37 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:40:37 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Tue, 17 Jul 2018 21:40:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 21:40:39 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 21:40:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 21:40:45 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:40:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 21:40:45 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 21:40:45 GMT
ENV TINI_VERSION=0.16.1
# Tue, 17 Jul 2018 21:40:46 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 17 Jul 2018 21:40:53 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 17 Jul 2018 21:40:55 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 17 Jul 2018 21:40:56 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 17 Jul 2018 21:40:56 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Tue, 17 Jul 2018 21:40:57 GMT
ENV CONVERTIGO_REVISION=44730
# Tue, 17 Jul 2018 21:40:57 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Tue, 17 Jul 2018 21:40:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 17 Jul 2018 21:41:18 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Tue, 17 Jul 2018 21:41:19 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Tue, 17 Jul 2018 21:41:19 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Tue, 17 Jul 2018 21:41:19 GMT
ENV SWT_GTK3=0
# Tue, 17 Jul 2018 21:41:20 GMT
WORKDIR /workspace
# Tue, 17 Jul 2018 21:41:20 GMT
VOLUME [/workspace]
# Tue, 17 Jul 2018 21:41:21 GMT
EXPOSE 28080/tcp
# Tue, 17 Jul 2018 21:41:21 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:41:22 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a94b804779097a35582b60efc27fdcd3a65e6f5242c464ba4c33e9de91532c6`  
		Last Modified: Tue, 17 Jul 2018 18:34:21 GMT  
		Size: 10.1 MB (10062159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3041c3bc2492b81e0797f553e422fd372398323c1a7831a3132ece2b295a89`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f79d6a6011f73cfd469f12906308aef06e1f9d79a5f572546f2f5a2e6e127e5`  
		Last Modified: Tue, 17 Jul 2018 21:43:31 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d369ca8704cf474d41873c52f859bfaaf87100fe65d5fbeb9d7bce107d510c4`  
		Last Modified: Tue, 17 Jul 2018 21:43:30 GMT  
		Size: 509.3 KB (509292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62e73d9e412d6f4c4d2ec5bf6dcbb35b37cc62a54d3d76620595a9af855da8c`  
		Last Modified: Tue, 17 Jul 2018 21:43:30 GMT  
		Size: 4.3 KB (4260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f097e53d3cc4f632b66e6de42c23dfc38cff184881cbc09735e9ec047c532147`  
		Last Modified: Tue, 17 Jul 2018 21:43:27 GMT  
		Size: 25.9 KB (25927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a07ae2453edb9ca6cbacb322a2018a757b6fa225a96085ab1f0d9349b0ae01`  
		Last Modified: Tue, 17 Jul 2018 21:43:45 GMT  
		Size: 122.1 MB (122144198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098045f95b27dc5c1cb00b81985700615eb2df5f766e80374662efd0e9a2dee0`  
		Last Modified: Tue, 17 Jul 2018 21:43:27 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbcfbde72700196c4936e0e9b7724fccb1b1e1af7aa4fc9d4f6f266d3a8501e`  
		Last Modified: Tue, 17 Jul 2018 21:43:28 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:06b32fd53ddb473e8b6f350e51f8612c8f8d4fb9172084f807d017188bc47f67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.7 MB (335745424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601fd8a62d5d9f053004405f7f10fd8198deb626aefc51752127afafb97ffbd3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Sat, 07 Jul 2018 12:22:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 07 Jul 2018 12:22:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 07 Jul 2018 12:22:23 GMT
EXPOSE 8080/tcp
# Sat, 07 Jul 2018 12:22:23 GMT
CMD ["catalina.sh" "run"]
# Sat, 07 Jul 2018 12:55:32 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 07 Jul 2018 12:55:32 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 07 Jul 2018 12:55:33 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 07 Jul 2018 12:55:34 GMT
WORKDIR /usr/local/tomcat
# Sat, 07 Jul 2018 12:55:39 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 12:55:39 GMT
ENV GOSU_VERSION=1.10
# Sat, 07 Jul 2018 12:55:40 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 07 Jul 2018 12:55:40 GMT
ENV TINI_VERSION=0.16.1
# Sat, 07 Jul 2018 12:55:40 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 07 Jul 2018 12:55:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sat, 07 Jul 2018 12:55:45 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 07 Jul 2018 12:55:46 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 07 Jul 2018 12:55:47 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Sat, 07 Jul 2018 12:55:47 GMT
ENV CONVERTIGO_REVISION=44730
# Sat, 07 Jul 2018 12:55:47 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Sat, 07 Jul 2018 12:55:47 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 07 Jul 2018 12:56:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sat, 07 Jul 2018 12:56:03 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sat, 07 Jul 2018 12:56:04 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sat, 07 Jul 2018 12:56:04 GMT
ENV SWT_GTK3=0
# Sat, 07 Jul 2018 12:56:04 GMT
WORKDIR /workspace
# Sat, 07 Jul 2018 12:56:05 GMT
VOLUME [/workspace]
# Sat, 07 Jul 2018 12:56:05 GMT
EXPOSE 28080/tcp
# Sat, 07 Jul 2018 12:56:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:56:06 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638bb77d26b1a152cfa52c43811b5c587fe14afcaa48c8c921f48d99cafd3f34`  
		Last Modified: Sat, 07 Jul 2018 12:36:07 GMT  
		Size: 15.6 MB (15556963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80dc044a08dabc36103a4c6c4425bd0c697bebb6d5d7a8cdfbd59498ad3890`  
		Last Modified: Sat, 07 Jul 2018 12:36:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f52576b8201b181cff47875e33261c53a5d7a42a578dee59c21760e529fe424`  
		Last Modified: Sat, 07 Jul 2018 12:56:58 GMT  
		Size: 956.1 KB (956137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f25e85e1f3d8873bf741facbf2e2cbbed8138ff7c17e3fe855a0de23c7822d7`  
		Last Modified: Sat, 07 Jul 2018 12:56:58 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4fadd7ab402d5bc387107371fcf5bf9f9f61f8d6d7d0578994668c7567816f`  
		Last Modified: Sat, 07 Jul 2018 12:56:57 GMT  
		Size: 4.4 KB (4351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341d84e80ada9481a77e7d62a1d777473330ba87dbab5cfd977520ded5e2af3`  
		Last Modified: Sat, 07 Jul 2018 12:56:59 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5439807ecbef113b19556228c96ab064c4c305218f9c1aecc2f57d22d89aee28`  
		Last Modified: Sat, 07 Jul 2018 12:57:14 GMT  
		Size: 122.1 MB (122144122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ae950c0104d7c5f8992ffd58279bafcab960fe35efd9f0be43e4f8789322c3`  
		Last Modified: Sat, 07 Jul 2018 12:56:56 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38a5973c1ee9c5876a55b6315128e1a058efa0f5ee9c03a4f5db12b13acbeb7`  
		Last Modified: Sat, 07 Jul 2018 12:56:57 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:750e125326047c06de0677ce05d9824ad202518efec684d2f9325126576b32f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (304024227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f951e518e1e86a509cfc12272d8a260f8d4f057870ac101f140b244a92c965`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:14:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 19:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 19:14:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 19:14:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 19:14:51 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 19:14:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 19:14:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 19:20:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 19:20:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 28 Jun 2018 04:35:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Jun 2018 04:35:59 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Jun 2018 04:36:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Jun 2018 04:36:02 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Jun 2018 04:36:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Jun 2018 04:36:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Jun 2018 04:36:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 28 Jun 2018 04:36:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Jun 2018 04:36:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 04:36:20 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Jun 2018 04:36:21 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 10:08:02 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 10:08:03 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 10:08:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 10:08:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Sat, 07 Jul 2018 10:09:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 07 Jul 2018 10:10:03 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 07 Jul 2018 10:10:04 GMT
EXPOSE 8080/tcp
# Sat, 07 Jul 2018 10:10:04 GMT
CMD ["catalina.sh" "run"]
# Sat, 07 Jul 2018 11:24:48 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 07 Jul 2018 11:24:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 07 Jul 2018 11:24:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 07 Jul 2018 11:24:51 GMT
WORKDIR /usr/local/tomcat
# Sat, 07 Jul 2018 11:25:01 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 11:25:02 GMT
ENV GOSU_VERSION=1.10
# Sat, 07 Jul 2018 11:25:03 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 07 Jul 2018 11:25:04 GMT
ENV TINI_VERSION=0.16.1
# Sat, 07 Jul 2018 11:25:05 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 07 Jul 2018 11:25:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sat, 07 Jul 2018 11:25:15 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 07 Jul 2018 11:25:17 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 07 Jul 2018 11:25:18 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Sat, 07 Jul 2018 11:25:19 GMT
ENV CONVERTIGO_REVISION=44730
# Sat, 07 Jul 2018 11:25:20 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Sat, 07 Jul 2018 11:25:21 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 07 Jul 2018 11:26:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sat, 07 Jul 2018 11:26:12 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sat, 07 Jul 2018 11:26:13 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sat, 07 Jul 2018 11:26:13 GMT
ENV SWT_GTK3=0
# Sat, 07 Jul 2018 11:26:14 GMT
WORKDIR /workspace
# Sat, 07 Jul 2018 11:26:15 GMT
VOLUME [/workspace]
# Sat, 07 Jul 2018 11:26:16 GMT
EXPOSE 28080/tcp
# Sat, 07 Jul 2018 11:26:17 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 11:26:18 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb59a2b70e9ae47dac27b7dfd503dc96eefb9f422ecb5478408b87d2ea43523`  
		Last Modified: Wed, 27 Jun 2018 19:27:14 GMT  
		Size: 839.3 KB (839304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d19a25a8b5a114f930cf7040692152ad596f28c52561c73a652e8a3cdc8fd8f`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c7eb51731c43713c99a5adbafe78d8856a8a15be77ef37a2569f571045e737`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ab0efc60e892224bbc8d216a860e56071edbb907ca8a0628bf8f60520b4cd`  
		Last Modified: Wed, 27 Jun 2018 19:27:47 GMT  
		Size: 112.7 MB (112747242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22b0c4b2de3ad2333e41770cd46775aff3d969d495c2cbdd5b1b55e994628f2`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e3fd2f11266b399f95aae36c1d04a1344fd9a90fabb2b79557abcb33fb7ce8`  
		Last Modified: Thu, 28 Jun 2018 05:10:02 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6416eb08bb0965cd6537202d7ada3dca7adac567ff79b46c4d91490682bebafb`  
		Last Modified: Thu, 28 Jun 2018 05:10:02 GMT  
		Size: 513.5 KB (513460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba925cf993a448f32bfb10ba4d3d18574505d4b57e3f319402c5d9c59e4aa58`  
		Last Modified: Sat, 07 Jul 2018 11:02:15 GMT  
		Size: 10.1 MB (10071889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fb5c61d2f65330e25fbecd350380735cdc54e14360a449e3a943d444b05337`  
		Last Modified: Sat, 07 Jul 2018 11:02:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab68dbd462dcc624794f4f441557f250cf8c0f040795e7df76aa3c090946cb2`  
		Last Modified: Sat, 07 Jul 2018 11:30:34 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f8267881b6d47f622e7016b45c909cfe08447aceefe77a5bc7b7f78528505a`  
		Last Modified: Sat, 07 Jul 2018 11:30:34 GMT  
		Size: 476.8 KB (476848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec5375bd52409e91b67dadf30d7006c5f82834e60d30e11d6eba33c763c53fd`  
		Last Modified: Sat, 07 Jul 2018 11:30:30 GMT  
		Size: 4.3 KB (4266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1c81b653d83b238923801a9ce38595072ed1220dd0f83251b8855ce9411549`  
		Last Modified: Sat, 07 Jul 2018 11:30:30 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b74f853888dbafeefcb29bcfdaf33aec426d0fcc7515c61831c6aaec9f1fef`  
		Last Modified: Sat, 07 Jul 2018 11:30:49 GMT  
		Size: 122.1 MB (122144130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032d31c1527f423fa78b2b3545db8941c9a50aac6acc6d4a4a91f2362dd52c0d`  
		Last Modified: Sat, 07 Jul 2018 11:30:30 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e938e1ad4c64a091272502895570f8c904dcfafc594331d6d9ad0f9c9cccd54`  
		Last Modified: Sat, 07 Jul 2018 11:30:31 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; 386

```console
$ docker pull convertigo@sha256:bad8d0f66f257a4bd454ea238a325c3c47606c8b5d273ce295ba6b8e8074ce88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.2 MB (332242173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f226ee6fb6c49a77ddb253d01eb262a521ac165872d1c4ce425b2ad0adacde24`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 20:15:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 20:15:59 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 20:16:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 20:16:00 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 20:16:00 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 20:16:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 20:16:01 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 20:16:02 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:16:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:16:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 20:16:13 GMT
ENV TOMCAT_MAJOR=7
# Tue, 17 Jul 2018 20:16:13 GMT
ENV TOMCAT_VERSION=7.0.90
# Tue, 17 Jul 2018 20:16:13 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Tue, 17 Jul 2018 20:16:14 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Tue, 17 Jul 2018 20:16:14 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Tue, 17 Jul 2018 20:17:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 20:17:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 20:17:19 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 20:17:19 GMT
CMD ["catalina.sh" "run"]
# Wed, 18 Jul 2018 01:31:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 18 Jul 2018 01:31:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 18 Jul 2018 01:31:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 18 Jul 2018 01:31:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 18 Jul 2018 01:31:20 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 01:31:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 18 Jul 2018 01:31:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 18 Jul 2018 01:31:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 18 Jul 2018 01:31:21 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 18 Jul 2018 01:31:32 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 18 Jul 2018 01:31:33 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 18 Jul 2018 01:31:34 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 18 Jul 2018 01:31:34 GMT
ENV CONVERTIGO_VERSION=7.5.2
# Wed, 18 Jul 2018 01:31:35 GMT
ENV CONVERTIGO_REVISION=44730
# Wed, 18 Jul 2018 01:31:35 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.2/convertigo-7.5.2-v44730-linux32.war
# Wed, 18 Jul 2018 01:31:35 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 18 Jul 2018 01:32:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 18 Jul 2018 01:32:00 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 18 Jul 2018 01:32:01 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 18 Jul 2018 01:32:01 GMT
ENV SWT_GTK3=0
# Wed, 18 Jul 2018 01:32:02 GMT
WORKDIR /workspace
# Wed, 18 Jul 2018 01:32:02 GMT
VOLUME [/workspace]
# Wed, 18 Jul 2018 01:32:03 GMT
EXPOSE 28080/tcp
# Wed, 18 Jul 2018 01:32:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 01:32:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc71fdcb63b05113163cc9ae0f7996497fbaa372fb3dba6c94017445c8626b9d`  
		Last Modified: Tue, 17 Jul 2018 20:49:23 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e67adac0e21974d97d5f8f8eb3fac6624b0b5585168736754c80e7430155599`  
		Last Modified: Tue, 17 Jul 2018 20:49:24 GMT  
		Size: 540.4 KB (540350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c32bdf6152318ec2654799491dac8e3ac4f50cadb208c18171628b87137d33`  
		Last Modified: Tue, 17 Jul 2018 20:49:27 GMT  
		Size: 10.0 MB (9962432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951c18f5486e2f4fcd10e944147ff933392b6d50670d871ea28883eeaf529a7`  
		Last Modified: Tue, 17 Jul 2018 20:49:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32de0b31de3b5d702a7c1adaf08588efc8c2c86344a1aba523691c415691cd0e`  
		Last Modified: Wed, 18 Jul 2018 01:33:31 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ec4656e28f9f20c25f96ccd530ccc80aa77f87f9c090baf192e73d250dd1c9`  
		Last Modified: Wed, 18 Jul 2018 01:33:31 GMT  
		Size: 489.2 KB (489158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce1abde28bd489ad01a3dc755122faa8de50a343d86568a821dba36f0207511`  
		Last Modified: Wed, 18 Jul 2018 01:33:29 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb2d00c7d8fdb9061618071c0f3c9969c2db555f8c7a274ea2b1fb81e835cb`  
		Last Modified: Wed, 18 Jul 2018 01:33:29 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5b32bafd85b48aa481af9496f8aaea388c1d291b43b5086cc79e772e34090c`  
		Last Modified: Wed, 18 Jul 2018 01:33:52 GMT  
		Size: 136.2 MB (136208191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c883c284df41a2b621d339793946e559e2db2d556925171e07484b51e41506`  
		Last Modified: Wed, 18 Jul 2018 01:33:28 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be1f4f9421735cf0f060995cb1967762faf0d0e89d52fced9d75049f27a0831`  
		Last Modified: Wed, 18 Jul 2018 01:33:30 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
