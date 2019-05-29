<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `xwiki`

-	[`xwiki:10`](#xwiki10)
-	[`xwiki:10.11`](#xwiki1011)
-	[`xwiki:10.11.8`](#xwiki10118)
-	[`xwiki:10.11.8-postgres-tomcat`](#xwiki10118-postgres-tomcat)
-	[`xwiki:10.11-postgres-tomcat`](#xwiki1011-postgres-tomcat)
-	[`xwiki:10-mysql-tomcat`](#xwiki10-mysql-tomcat)
-	[`xwiki:10-postgres-tomcat`](#xwiki10-postgres-tomcat)
-	[`xwiki:11`](#xwiki11)
-	[`xwiki:11.4`](#xwiki114)
-	[`xwiki:11.4-mysql-tomcat`](#xwiki114-mysql-tomcat)
-	[`xwiki:11.4-postgres-tomcat`](#xwiki114-postgres-tomcat)
-	[`xwiki:11-mysql-tomcat`](#xwiki11-mysql-tomcat)
-	[`xwiki:11-postgres-tomcat`](#xwiki11-postgres-tomcat)
-	[`xwiki:latest`](#xwikilatest)
-	[`xwiki:lts`](#xwikilts)
-	[`xwiki:lts-mysql`](#xwikilts-mysql)
-	[`xwiki:lts-mysql-tomcat`](#xwikilts-mysql-tomcat)
-	[`xwiki:lts-postgres`](#xwikilts-postgres)
-	[`xwiki:lts-postgres-tomcat`](#xwikilts-postgres-tomcat)
-	[`xwiki:mysql-tomcat`](#xwikimysql-tomcat)
-	[`xwiki:postgres-tomcat`](#xwikipostgres-tomcat)
-	[`xwiki:stable`](#xwikistable)
-	[`xwiki:stable-mysql`](#xwikistable-mysql)
-	[`xwiki:stable-mysql-tomcat`](#xwikistable-mysql-tomcat)
-	[`xwiki:stable-postgres`](#xwikistable-postgres)
-	[`xwiki:stable-postgres-tomcat`](#xwikistable-postgres-tomcat)

## `xwiki:10`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.11` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11.8`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.11.8` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11.8-postgres-tomcat`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:10.11.8-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:10.11.8-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:10.11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:10.11-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-mysql-tomcat`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-postgres-tomcat`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:10-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:10-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:11` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11.4`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:11.4` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11.4-mysql-tomcat`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:11.4-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11.4-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c5a16b374a3625603819f85932506f63e3e2b4f372f2f3c420b8221b1b17403d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:11.4-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8c42b873afadc4568fe7327da0180f417d3398e08773a6aadf49408a2854edfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.7 MB (550739897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777049fa6225bb30309b64c447a3860dd836e98503b062eb864652d508902a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:26:30 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:26:31 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:26:31 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:26:32 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:26:32 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:26:33 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:26:33 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:26:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d27cca638bdc8c8ce4996b4b56c5ea4ddb8e26aba31336406b7df82f4e716`  
		Last Modified: Tue, 28 May 2019 23:28:30 GMT  
		Size: 271.6 MB (271585420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7285cfd78c11a3f1be5ea49300f27e49981c7979c4522de679735a8857261`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 618.9 KB (618881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31edf3e00b986d3c166c6e02d5f9260779b06ae25ddfdaa5805e77ee90332244`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a35dc6f82303c021c33ccd2861d97c7b60fbe436e2d6b8f9eab07421590938`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7505e7af71616aa7efd3e3c84c2399420a24b1b6ba4302b9b6def8e1e0202eff`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6e026b046a8de68bfbee3b329097b5148fa60ebf121e7feb8582ffbd0a9e1`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.4 KB (2410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:11.4-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2b1f517dab6dfb1338dc79111c7f528dfc140a2689ac4e18cf177cc79e8d565f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531922565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d16fd5f8585c2f23e5e806db7f8746170331e98191b71f936a0084360ee8624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 22:51:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 22:54:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:54:09 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:54:09 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:54:10 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:54:11 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:54:12 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:54:12 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:54:13 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd3e4745e50a467c6f66fce7c2d3f0a26922be5c99124a386d40fb5b4151ad`  
		Last Modified: Tue, 28 May 2019 22:56:12 GMT  
		Size: 271.6 MB (271585378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11426027952e831c69f3c6b1a95bac44b34cd13337602b9d37bb4443b8443e3`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca005015f79e4f4376b90115d063d388b41c99493618e3ec3b9c6ff844897d`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f52bff21bfc396beb8d0ddc0a291e60a576896ce1477e52a6c25b1e2b8f3153`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166171dcf595456437e13c14c060697f91b4c5430f37b6585565da9003ede492`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37faccaf3dddf809af0e821807ee7b5ab22bb16576c2fe67744336e4cab19697`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11-mysql-tomcat`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:11-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c5a16b374a3625603819f85932506f63e3e2b4f372f2f3c420b8221b1b17403d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8c42b873afadc4568fe7327da0180f417d3398e08773a6aadf49408a2854edfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.7 MB (550739897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777049fa6225bb30309b64c447a3860dd836e98503b062eb864652d508902a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:26:30 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:26:31 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:26:31 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:26:32 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:26:32 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:26:33 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:26:33 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:26:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d27cca638bdc8c8ce4996b4b56c5ea4ddb8e26aba31336406b7df82f4e716`  
		Last Modified: Tue, 28 May 2019 23:28:30 GMT  
		Size: 271.6 MB (271585420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7285cfd78c11a3f1be5ea49300f27e49981c7979c4522de679735a8857261`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 618.9 KB (618881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31edf3e00b986d3c166c6e02d5f9260779b06ae25ddfdaa5805e77ee90332244`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a35dc6f82303c021c33ccd2861d97c7b60fbe436e2d6b8f9eab07421590938`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7505e7af71616aa7efd3e3c84c2399420a24b1b6ba4302b9b6def8e1e0202eff`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6e026b046a8de68bfbee3b329097b5148fa60ebf121e7feb8582ffbd0a9e1`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.4 KB (2410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:11-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2b1f517dab6dfb1338dc79111c7f528dfc140a2689ac4e18cf177cc79e8d565f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531922565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d16fd5f8585c2f23e5e806db7f8746170331e98191b71f936a0084360ee8624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 22:51:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 22:54:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:54:09 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:54:09 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:54:10 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:54:11 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:54:12 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:54:12 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:54:13 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd3e4745e50a467c6f66fce7c2d3f0a26922be5c99124a386d40fb5b4151ad`  
		Last Modified: Tue, 28 May 2019 22:56:12 GMT  
		Size: 271.6 MB (271585378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11426027952e831c69f3c6b1a95bac44b34cd13337602b9d37bb4443b8443e3`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca005015f79e4f4376b90115d063d388b41c99493618e3ec3b9c6ff844897d`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f52bff21bfc396beb8d0ddc0a291e60a576896ce1477e52a6c25b1e2b8f3153`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166171dcf595456437e13c14c060697f91b4c5430f37b6585565da9003ede492`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37faccaf3dddf809af0e821807ee7b5ab22bb16576c2fe67744336e4cab19697`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:lts-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:lts-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:bcbe4e81e30287e29b8793097f2d0ccc0e426fbf6da25685aae7fd9808bae014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:762ff7c8d0a012ad04393e927f7849358c2293fea196c8b66db67ce840f84532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525811997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41acd63eadcc221b8c4b1fa057d6c244f2ee1e58b25f9adf26f90f2003cdbfc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:19:46 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:19:47 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:20:19 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:20:20 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:20:20 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:20:21 GMT
COPY file:c4e95f70490b423a9379f336f8f4d780824e06f56fa73bc69a238e245b53e842 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:20:21 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:20:21 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:20:22 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:20:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:20:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d3540ce2e9e8a2daeac752f89fae8d1f55e587f539ad7f57e509ea7e79d4a`  
		Last Modified: Thu, 16 May 2019 01:25:45 GMT  
		Size: 246.0 MB (245990747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fc7ea7769b8af909c3d2994638f841b38db1ad20a2cfe0cd82bc78378adbf`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 952.1 KB (952101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cdb66693f3b3350e8f808578088982cbf0419f89172bc85d378393d71c550c`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66339c178c38e8f7408a287422965fbd97f10c6f92306560cb39198059a70c9`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf19251001edbf8cd599c0eb47c0329543133cde91958687118438cda3c981`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0946c5a012cf183449dd8af2d1e465448dcd1a7daa5158cb39f263ef9ce5b53`  
		Last Modified: Thu, 16 May 2019 01:25:13 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:d56592ef8063bcdf6e681bdbe178c6e4170bfce182edc90c77180e7cadfa8a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:dbc5e1e4f776d7496943359511436a23d6ae8b87c11d67c84953aecb1f8bc189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.1 MB (525145069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0908f89b26c310dcb18536516ecd2dc039d54a3e28fb04427c76fa7e892c3538`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_VERSION=10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Thu, 16 May 2019 01:21:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Thu, 16 May 2019 01:22:22 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 16 May 2019 01:22:24 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 16 May 2019 01:22:24 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Thu, 16 May 2019 01:22:24 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 16 May 2019 01:22:25 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 16 May 2019 01:22:26 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 01:22:26 GMT
VOLUME [/usr/local/xwiki]
# Thu, 16 May 2019 01:22:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:22:27 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420675b61c038d2b6414401106a0e0c6534ee455c42d76f4bc7b7a63e0009af`  
		Last Modified: Thu, 16 May 2019 01:26:51 GMT  
		Size: 246.0 MB (245990772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf70644dbb53cf8daf15f109e48007862dca99d8a26366c53469766871e0ce`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b978c2e7729bef7836becb35d47bf433ab5c1c55fb476e5a14690d149a3b6bf5`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a39d557afe72dfc2e589f43fe308e568d8a1157c6b85875ce60d9ab9bf6fb9`  
		Last Modified: Thu, 16 May 2019 01:26:22 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907a326f59dde964331cfb0e135e259ef8b2db04dedd43e6171ef3c3219e01c6`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 3.9 KB (3852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1775ae6068309dd82f4b460deb7efa8bfa54013fb6a103d72a4802f4dd70c`  
		Last Modified: Thu, 16 May 2019 01:26:23 GMT  
		Size: 2.4 KB (2415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:0776c3621debbd655aaf309bccdd0e3d7cdf1d70658fee175e564441eedf7cfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **506.3 MB (506327788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff326cfaf6e83f6c73354e8b1b3351302c48cb1a28a17b265623043cc74feaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_VERSION=10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11.8
# Tue, 28 May 2019 22:47:50 GMT
ENV XWIKI_DOWNLOAD_SHA256=d3ac801e156966b1e5729a5251aa13662262460edcbf903ec8b5e5d98563bf7e
# Tue, 28 May 2019 22:50:51 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:50:54 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:50:55 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:50:55 GMT
COPY file:bd68ae28ec068b0f89a2e05a10b1098af3b375c97a69f9255831e8fa6e87f773 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:50:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:50:57 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:50:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:50:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:50:58 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5feacc39d77b7dfc76a6baf71244ceeb8e24a2f4ec28b9a51a00cdb230b5bb`  
		Last Modified: Tue, 28 May 2019 22:55:08 GMT  
		Size: 246.0 MB (245990780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae0ed8790a1803b6b571a200735fa4ca44941a8f50912a09bd3b818f7957202`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5af3538c4aded2200ebdc506ef638f813676c4c1ac4a0209140df562a33ed1`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa43a88bcb7049403d9270359dc3575e81856674c2802a7d4619ae799ce96aa`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719e729d785468785ee961af947f09310928b85bd3d2c97f6209ba52d3490e1c`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53216c96bf118f4ef19dd79e6fcc6e76c032ca45fbd5c4e6354ae513d2d3d68`  
		Last Modified: Tue, 28 May 2019 22:54:29 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:a46089deab558cb0af29eb498ae23e107bfcee6df6f465e21ff61d25a380146d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:5d3bbd0d74c55aa6c73247720bb1587348a68d1b5fa43530a98755e2e14a1671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725b3d95a3ba30222eaaabc09a97216f93a57aa0a16d62e5a2eb47e5c48e8ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:19:46 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:00 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:25:39 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:25:40 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:25:41 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:25:41 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:25:42 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:25:42 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:25:42 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:25:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:25:42 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc3e1d49d57456cb93ac6dc2c39572ff71f05e3af8208eb60b9795ff324dcca`  
		Last Modified: Thu, 16 May 2019 01:26:11 GMT  
		Size: 189.0 MB (188995547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3fcaa0cc369bb3dbc85e91edc34b3cf97e83a5be12568fba5b7a6c22e194c5`  
		Last Modified: Tue, 28 May 2019 23:27:19 GMT  
		Size: 271.6 MB (271585362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899fcce07838b9a0024a6b87d493076bc3955c935dfd10028d158c2f0d6171a6`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 952.1 KB (952105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733d189ae28ab60b03f7fd2b4ff39121561aa7113e6a23d054cd13a52ce0de0`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61fff64fd664159ce66c9207cf8708ad3566bad00fbab5a00a0bd93ff0d1683`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.3 KB (2349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ea8e8bd55379ae15533d6458eecebb49c137ac20b4950118c94dda0232124c`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f081ba39f4d634351b92a42787386736f23de9d3cc3d4671fb2f39385bb4b3f1`  
		Last Modified: Tue, 28 May 2019 23:26:54 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:c5a16b374a3625603819f85932506f63e3e2b4f372f2f3c420b8221b1b17403d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:8c42b873afadc4568fe7327da0180f417d3398e08773a6aadf49408a2854edfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.7 MB (550739897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777049fa6225bb30309b64c447a3860dd836e98503b062eb864652d508902a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:26:30 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:26:31 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:26:31 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:26:32 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:26:32 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:26:33 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:26:33 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:26:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d27cca638bdc8c8ce4996b4b56c5ea4ddb8e26aba31336406b7df82f4e716`  
		Last Modified: Tue, 28 May 2019 23:28:30 GMT  
		Size: 271.6 MB (271585420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7285cfd78c11a3f1be5ea49300f27e49981c7979c4522de679735a8857261`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 618.9 KB (618881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31edf3e00b986d3c166c6e02d5f9260779b06ae25ddfdaa5805e77ee90332244`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a35dc6f82303c021c33ccd2861d97c7b60fbe436e2d6b8f9eab07421590938`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7505e7af71616aa7efd3e3c84c2399420a24b1b6ba4302b9b6def8e1e0202eff`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6e026b046a8de68bfbee3b329097b5148fa60ebf121e7feb8582ffbd0a9e1`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.4 KB (2410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2b1f517dab6dfb1338dc79111c7f528dfc140a2689ac4e18cf177cc79e8d565f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531922565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d16fd5f8585c2f23e5e806db7f8746170331e98191b71f936a0084360ee8624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 22:51:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 22:54:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:54:09 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:54:09 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:54:10 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:54:11 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:54:12 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:54:12 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:54:13 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd3e4745e50a467c6f66fce7c2d3f0a26922be5c99124a386d40fb5b4151ad`  
		Last Modified: Tue, 28 May 2019 22:56:12 GMT  
		Size: 271.6 MB (271585378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11426027952e831c69f3c6b1a95bac44b34cd13337602b9d37bb4443b8443e3`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca005015f79e4f4376b90115d063d388b41c99493618e3ec3b9c6ff844897d`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f52bff21bfc396beb8d0ddc0a291e60a576896ce1477e52a6c25b1e2b8f3153`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166171dcf595456437e13c14c060697f91b4c5430f37b6585565da9003ede492`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37faccaf3dddf809af0e821807ee7b5ab22bb16576c2fe67744336e4cab19697`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c5a16b374a3625603819f85932506f63e3e2b4f372f2f3c420b8221b1b17403d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8c42b873afadc4568fe7327da0180f417d3398e08773a6aadf49408a2854edfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.7 MB (550739897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777049fa6225bb30309b64c447a3860dd836e98503b062eb864652d508902a91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:32 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:25:28 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 00:50:50 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 00:50:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 00:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 00:52:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 00:52:24 GMT
EXPOSE 8080
# Thu, 16 May 2019 00:52:24 GMT
CMD ["catalina.sh" "run"]
# Thu, 16 May 2019 01:17:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 16 May 2019 01:21:27 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 23:25:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 23:26:30 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 23:26:31 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 23:26:31 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 23:26:32 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 23:26:32 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 23:26:33 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 23:26:33 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 23:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 23:26:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e277f0dfbe2ad9cfd379d82c8e45d8a2f8c4c7d32e0fcca01d14f6d8a45b3f0`  
		Last Modified: Thu, 16 May 2019 01:00:43 GMT  
		Size: 10.6 MB (10605332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55679d800733c52f7eae67df4b45cb2726092e9c2dcd22f49f1be9916541fe46`  
		Last Modified: Thu, 16 May 2019 01:00:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf8460c067bb15a2ae6b9bbab88f3084e4084583f0f9d247365fa80feeedd4`  
		Last Modified: Thu, 16 May 2019 01:27:16 GMT  
		Size: 188.7 MB (188661669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d27cca638bdc8c8ce4996b4b56c5ea4ddb8e26aba31336406b7df82f4e716`  
		Last Modified: Tue, 28 May 2019 23:28:30 GMT  
		Size: 271.6 MB (271585420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7285cfd78c11a3f1be5ea49300f27e49981c7979c4522de679735a8857261`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 618.9 KB (618881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31edf3e00b986d3c166c6e02d5f9260779b06ae25ddfdaa5805e77ee90332244`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a35dc6f82303c021c33ccd2861d97c7b60fbe436e2d6b8f9eab07421590938`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7505e7af71616aa7efd3e3c84c2399420a24b1b6ba4302b9b6def8e1e0202eff`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6e026b046a8de68bfbee3b329097b5148fa60ebf121e7feb8582ffbd0a9e1`  
		Last Modified: Tue, 28 May 2019 23:27:36 GMT  
		Size: 2.4 KB (2410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:2b1f517dab6dfb1338dc79111c7f528dfc140a2689ac4e18cf177cc79e8d565f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531922565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d16fd5f8585c2f23e5e806db7f8746170331e98191b71f936a0084360ee8624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:18:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:26:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:26:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:27:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 16 May 2019 01:19:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 16 May 2019 01:19:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:19:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 16 May 2019 01:19:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 16 May 2019 01:19:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 16 May 2019 01:19:53 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 16 May 2019 01:19:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 16 May 2019 01:20:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 May 2019 01:20:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 16 May 2019 01:24:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_VERSION=8.5.41
# Thu, 16 May 2019 01:24:59 GMT
ENV TOMCAT_SHA512=16c86acb5ef635cdb260609e6d3630b87f963c9f71c35d97a0b413669509cb7258931f9d9f8d90f18665d936b491e4ea84ea8f4d71b336a208f353a268f70964
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
# Thu, 16 May 2019 01:25:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz.asc
# Thu, 16 May 2019 01:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 16 May 2019 01:26:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 16 May 2019 01:26:50 GMT
EXPOSE 8080
# Thu, 16 May 2019 01:26:51 GMT
CMD ["catalina.sh" "run"]
# Tue, 28 May 2019 22:46:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 28 May 2019 22:47:48 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_VERSION=11.4
# Tue, 28 May 2019 22:51:05 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.4
# Tue, 28 May 2019 22:51:06 GMT
ENV XWIKI_DOWNLOAD_SHA256=8a0d83edd44b2a73c079bc43672c88c096e28b59e50a69dd37391d6789ba4670
# Tue, 28 May 2019 22:54:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 28 May 2019 22:54:09 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 28 May 2019 22:54:09 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Tue, 28 May 2019 22:54:10 GMT
COPY file:bb513b07693b0f03295b679c3da15a7fa3d7769583b3db4897a41cfec3529978 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 28 May 2019 22:54:11 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 28 May 2019 22:54:12 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 28 May 2019 22:54:12 GMT
VOLUME [/usr/local/xwiki]
# Tue, 28 May 2019 22:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 May 2019 22:54:13 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db84c0479a64ab8502faa2abc3e183735de31fd0b7ec3a8ee89524608191334f`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b00e1f5cbfe8c47293c3c46cf02cdc919d318c16920b5017ee73db59ac29430`  
		Last Modified: Wed, 08 May 2019 16:34:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcffff131ad024a92a452c326c9530139b84cd4b2856489f2e9d94be69ee7e80`  
		Last Modified: Wed, 08 May 2019 16:36:19 GMT  
		Size: 48.3 MB (48336268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba54af39e02218ebc3ee6c6d9f73d7181ac811809ad0d59be77efc530fa3bb59`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee086acffeb24485819f1936cd4b21e24d03349ce88cd61fd7ded6f9f1331a1`  
		Last Modified: Thu, 16 May 2019 01:39:23 GMT  
		Size: 411.5 KB (411498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3060f3e0eea9f832bcfbb7b32e247d7d55529dddf55e77f141873365c2cbc3de`  
		Last Modified: Thu, 16 May 2019 01:40:03 GMT  
		Size: 10.6 MB (10613115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167737232b77fbf1ac56f9bb55fef57e7a20f2e0108309085f0c1014f424127`  
		Last Modified: Thu, 16 May 2019 01:40:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bed05159eb3694709a024899e69605e33303c66978224f54b9ceb3fc392114c`  
		Last Modified: Tue, 28 May 2019 22:55:17 GMT  
		Size: 179.6 MB (179571613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fd3e4745e50a467c6f66fce7c2d3f0a26922be5c99124a386d40fb5b4151ad`  
		Last Modified: Tue, 28 May 2019 22:56:12 GMT  
		Size: 271.6 MB (271585378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11426027952e831c69f3c6b1a95bac44b34cd13337602b9d37bb4443b8443e3`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cca005015f79e4f4376b90115d063d388b41c99493618e3ec3b9c6ff844897d`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f52bff21bfc396beb8d0ddc0a291e60a576896ce1477e52a6c25b1e2b8f3153`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166171dcf595456437e13c14c060697f91b4c5430f37b6585565da9003ede492`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37faccaf3dddf809af0e821807ee7b5ab22bb16576c2fe67744336e4cab19697`  
		Last Modified: Tue, 28 May 2019 22:55:35 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
