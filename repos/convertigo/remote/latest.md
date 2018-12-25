## `convertigo:latest`

```console
$ docker pull convertigo@sha256:41de20541d0e40f4ab43d290e5a3f8635f04ede53e3a452a7ebbfbb0de0ee775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:3e2d17655497bedaa722e79f15c9684ab0e5d3cfbebf8fd1f91a98cacde8af9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.7 MB (323694589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0de9ab96679cb440a15f8b599ec47f1bfefdc08ace39a0550753dcb5841cd5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 02:52:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Nov 2018 02:52:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 02:52:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 17 Nov 2018 02:52:47 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Nov 2018 02:52:47 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Nov 2018 02:52:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 03:02:36 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 03:02:41 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 03:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 03:02:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 03:02:47 GMT
ENV TOMCAT_MAJOR=7
# Sat, 08 Dec 2018 03:02:47 GMT
ENV TOMCAT_VERSION=7.0.92
# Sat, 08 Dec 2018 03:02:47 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Sat, 08 Dec 2018 03:02:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Sat, 08 Dec 2018 03:02:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Sat, 08 Dec 2018 03:03:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 08 Dec 2018 03:03:37 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 08 Dec 2018 03:03:38 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 03:03:38 GMT
CMD ["catalina.sh" "run"]
# Sat, 08 Dec 2018 06:56:27 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 08 Dec 2018 06:56:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 08 Dec 2018 06:56:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 08 Dec 2018 06:56:28 GMT
WORKDIR /usr/local/tomcat
# Sat, 08 Dec 2018 06:56:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 06:56:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 08 Dec 2018 06:56:33 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 08 Dec 2018 06:56:33 GMT
ENV TINI_VERSION=0.16.1
# Sat, 08 Dec 2018 06:56:33 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 24 Dec 2018 22:19:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 24 Dec 2018 22:19:26 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 24 Dec 2018 22:19:27 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 24 Dec 2018 22:19:28 GMT
ENV CONVERTIGO_VERSION=7.5.4
# Mon, 24 Dec 2018 22:19:28 GMT
ENV CONVERTIGO_REVISION=44975
# Mon, 24 Dec 2018 22:19:28 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.4/convertigo-7.5.4-v44975-linux32.war
# Mon, 24 Dec 2018 22:19:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 24 Dec 2018 22:19:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 24 Dec 2018 22:19:45 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Mon, 24 Dec 2018 22:19:45 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Mon, 24 Dec 2018 22:19:45 GMT
ENV SWT_GTK3=0
# Mon, 24 Dec 2018 22:19:45 GMT
WORKDIR /workspace
# Mon, 24 Dec 2018 22:19:46 GMT
VOLUME [/workspace]
# Mon, 24 Dec 2018 22:19:46 GMT
EXPOSE 28080
# Mon, 24 Dec 2018 22:19:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 24 Dec 2018 22:19:46 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258c74eb25ab460a7b03f821701264cd5ced2828bf35daebda0f8f0fa995ece7`  
		Last Modified: Sat, 17 Nov 2018 03:20:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c135322994c63d4c28f82c1f6d4447a82bda72a2e1d7e8d35a3c33bcbc6ebe0`  
		Last Modified: Sat, 08 Dec 2018 03:28:48 GMT  
		Size: 1.2 MB (1209700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cc25ec48616f45088c3fef8def8398ed8bb9feb674e9da5699961e7535ae72`  
		Last Modified: Sat, 08 Dec 2018 03:28:48 GMT  
		Size: 528.7 KB (528657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3871d6ab22c325ded815980ceeb19de10f796fd20e472779fc0fe7f8631b0f4c`  
		Last Modified: Sat, 08 Dec 2018 03:28:50 GMT  
		Size: 13.9 MB (13886011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ec4e20fea526e1d57afba8f189125913362622dacf78389b88377d66b59c19`  
		Last Modified: Sat, 08 Dec 2018 03:28:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badfe107ecfaa614c4d746abd7980867e75e850aa4859ee5650787fd23c903b6`  
		Last Modified: Mon, 24 Dec 2018 22:21:16 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ec2a1c86941cabf6fd94839dac58517df3f00ddce55156c18b3b57aa759372`  
		Last Modified: Mon, 24 Dec 2018 22:21:17 GMT  
		Size: 509.3 KB (509287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39176430ea01fbc838a37c05656cf9372491bebfe5919cf3d7ca9f0e965fdef0`  
		Last Modified: Mon, 24 Dec 2018 22:21:16 GMT  
		Size: 4.3 KB (4263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cc9b73c6b7ba22436a06b4868b2aef69788391b67f34e80611e8ab0ea7e3fc`  
		Last Modified: Mon, 24 Dec 2018 22:21:16 GMT  
		Size: 26.0 KB (25974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208a2556cfe8e5efaff3f1a5cac96e0e23fe40eccdf4b280fe9f7dcdfccd307`  
		Last Modified: Mon, 24 Dec 2018 22:21:26 GMT  
		Size: 123.9 MB (123909321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c4294c106f0e4f78ca0075426ad499d96e0f0dd48b31b2f56960fd6d49fbb5`  
		Last Modified: Mon, 24 Dec 2018 22:21:16 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09842f62af1a9679824d7bfcb42c9e235908beb39acc561c20b49809b111f8e7`  
		Last Modified: Mon, 24 Dec 2018 22:21:16 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:343c2183b8d11e33e8c2775c153555655f3dad8cc5fdaf51a14708eef5f44304
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.4 MB (310372463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca0a0453a1462372f787fec5dd60d764fc3fc6639b3e88385026333c327cb9b`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 21:22:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 17 Nov 2018 21:22:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 21:22:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 17 Nov 2018 21:22:30 GMT
WORKDIR /usr/local/tomcat
# Sat, 17 Nov 2018 21:22:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 17 Nov 2018 21:22:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 14:18:12 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 14:18:25 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 14:18:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 14:18:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 14:18:44 GMT
ENV TOMCAT_MAJOR=7
# Sat, 08 Dec 2018 14:18:45 GMT
ENV TOMCAT_VERSION=7.0.92
# Sat, 08 Dec 2018 14:18:45 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Sat, 08 Dec 2018 14:18:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Sat, 08 Dec 2018 14:18:46 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Sat, 08 Dec 2018 14:20:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 08 Dec 2018 14:20:49 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 08 Dec 2018 14:20:50 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 14:20:51 GMT
CMD ["catalina.sh" "run"]
# Sat, 08 Dec 2018 16:01:34 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 08 Dec 2018 16:01:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 08 Dec 2018 16:01:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 08 Dec 2018 16:01:36 GMT
WORKDIR /usr/local/tomcat
# Sat, 08 Dec 2018 16:01:44 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 16:01:45 GMT
ENV GOSU_VERSION=1.10
# Sat, 08 Dec 2018 16:01:46 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 08 Dec 2018 16:01:46 GMT
ENV TINI_VERSION=0.16.1
# Sat, 08 Dec 2018 16:01:47 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 09:40:18 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 09:40:21 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 09:40:24 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 25 Dec 2018 09:40:25 GMT
ENV CONVERTIGO_VERSION=7.5.4
# Tue, 25 Dec 2018 09:40:26 GMT
ENV CONVERTIGO_REVISION=44975
# Tue, 25 Dec 2018 09:40:27 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.4/convertigo-7.5.4-v44975-linux32.war
# Tue, 25 Dec 2018 09:40:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 25 Dec 2018 09:42:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Tue, 25 Dec 2018 09:42:22 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Tue, 25 Dec 2018 09:42:23 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Tue, 25 Dec 2018 09:42:24 GMT
ENV SWT_GTK3=0
# Tue, 25 Dec 2018 09:42:24 GMT
WORKDIR /workspace
# Tue, 25 Dec 2018 09:42:25 GMT
VOLUME [/workspace]
# Tue, 25 Dec 2018 09:42:26 GMT
EXPOSE 28080
# Tue, 25 Dec 2018 09:42:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:42:28 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98d94458e9c79bfe1b067adecc59ae983351039a3a9e8aa00ee8491d600d83f`  
		Last Modified: Sat, 17 Nov 2018 23:09:55 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62920a7d05d8754a9c4d04a8a7aaedd90d821c2c2c0287788473eb774333fa42`  
		Last Modified: Sat, 08 Dec 2018 15:28:18 GMT  
		Size: 1.2 MB (1186140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a3aaf038795a89bbc46866a756876d56eff440772a4d63df770869900bbf24`  
		Last Modified: Sat, 08 Dec 2018 15:28:17 GMT  
		Size: 513.2 KB (513162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68015757d242598bd6237742a971b96ee38f511dd710d6ef1cf7095fff4f04cc`  
		Last Modified: Sat, 08 Dec 2018 15:28:21 GMT  
		Size: 13.5 MB (13512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c074f26dfb64d3f9fc6eccb229cd659e64d7f5f2867cf340557f3e7c463eff`  
		Last Modified: Sat, 08 Dec 2018 15:28:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea795257c4d3e11d78afc9cc919613759d0e7bf9344216e4550fdc05cf82992b`  
		Last Modified: Tue, 25 Dec 2018 09:48:02 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe1f934e09d15588f73f8650f528a1fa042c51a7f653cf25e03e501acdbaf46`  
		Last Modified: Tue, 25 Dec 2018 09:48:02 GMT  
		Size: 476.8 KB (476843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5107fc68399c14322bb543f68b9c22359b623ee4d169796f0ac4065b1d0ec0a`  
		Last Modified: Tue, 25 Dec 2018 09:47:59 GMT  
		Size: 4.3 KB (4266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff0f3bfff5e6d8791f2d37b18a6f810a3bde6914fc5b35490e56537d2db4ed7`  
		Last Modified: Tue, 25 Dec 2018 09:47:59 GMT  
		Size: 26.0 KB (25985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c36b053105c6c0b501453eb58c4734a6a7d7cd72bdee4769e9383f2ca244447`  
		Last Modified: Tue, 25 Dec 2018 09:48:19 GMT  
		Size: 123.9 MB (123909356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f155949789fed76d403b67b591d6b0b49f6e3c539fc9bda3e5becde6d289e51d`  
		Last Modified: Tue, 25 Dec 2018 09:47:59 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65f2dc2bf674094e89113e1118aef4d1363a8bbc685c13ca0e2b2926a398c3`  
		Last Modified: Tue, 25 Dec 2018 09:47:59 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
